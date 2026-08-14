package jetbrains.mps.ide.whatsnew

import com.intellij.openapi.application.ApplicationInfo
import com.intellij.openapi.components.serviceAsync
import com.intellij.platform.whatsNew.WhatsNewInVisionContentProvider
import com.intellij.util.net.internal.ProxyMigrationService

class MPSWhatsNewInVisionContentProvider : WhatsNewInVisionContentProvider() {
    override val baseResourcePathInClassLoader: String = "jetbrains/mps/whatsNew"
    override val visionJsonFileNames: List<String> = listOf("vision-in-product-pages-" + ApplicationInfo.getInstance().shortVersion + ".json")

    override suspend fun isAvailable(): Boolean {
        val appInfo = ApplicationInfo.getInstance()
        if(appInfo != null
            && appInfo.getShortCompanyName() == "JetBrains"
            && appInfo.getFullApplicationName() != null
            && appInfo.getFullApplicationName().startsWith("JetBrains MPS")) {
            val available = super.isAvailable()
            if (available) {
                warmUpProxyServiceForJcef()
            }
            return available
        }
        return false;
    }

    /**
     * Workaround for a platform initialization-order bug (the `IJPL-1045` family). Once What's New is available it is
     * shown by creating a JCEF browser, which lazily triggers `JBCefApp$Holder.<clinit>`. That initializer reads the
     * JCEF proxy settings (`SettingsHelper.loadArgs` -> `JBCefProxySettings.getInstance()` -> `HttpConfigurable`),
     * creating `HttpConfigurable` for the first time.
     *
     * `JBCefApp` wraps that read in `Cancellation.forceNonCancellableSectionInClassInitializer`, which satisfies the
     * platform's "a class initializer must not request services" guard for the first creation. The marker is lost,
     * however, while the service is being built: `ComponentManagerImpl.runBlockingInitialization` resets the thread
     * context and drops the non-cancellable flag. `HttpConfigurable.initializeComponent()` then makes a nested,
     * first-time `ProxyMigrationService.getInstance()` lookup which - now outside the non-cancellable section but still
     * under the running `<clinit>` - is reported as a `LOG.error` and surfaces as an IDE internal error. MPS hits this
     * before other IDEs because it touches the proxy stack initially through the What's New browser rather than through
     * earlier startup network activity (update checks, marketplace, etc.).
     *
     * Requesting [ProxyMigrationService] here, on this clean (non-`<clinit>`) coroutine, creates and caches it off any
     * class initializer. By the time `JBCefApp`'s `<clinit>` runs, the nested lookup inside
     * `HttpConfigurable.initializeComponent()` returns the already-cached instance and short-circuits before the guard
     * is evaluated, so nothing is logged. We use [serviceAsync] (the platform's async service-init API) rather than a
     * blocking accessor, and target the exact service named in the guard error.
     *
     * [isAvailable] is the only override point guaranteed to run before the browser is created on both show paths
     * (the startup `WhatsNewShowOnStartCheckService` and the `WhatsNewAction`); a separate startup activity would race
     * the `order="last"` show activity. Remove once the platform no longer requests services from a class initializer
     * (e.g. `runBlockingInitialization` propagates the non-cancellable marker, or `HttpConfigurable.initializeComponent`
     * stops creating services - it is already marked temporary in the platform).
     */
    private suspend fun warmUpProxyServiceForJcef() {
        serviceAsync<ProxyMigrationService>()
    }
}
