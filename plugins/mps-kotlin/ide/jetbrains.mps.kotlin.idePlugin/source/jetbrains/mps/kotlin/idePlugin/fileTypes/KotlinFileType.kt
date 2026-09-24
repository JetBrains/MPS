package jetbrains.mps.kotlin.idePlugin.fileTypes

import com.intellij.icons.AllIcons
import com.intellij.openapi.fileTypes.LanguageFileType
import javax.swing.Icon

object KotlinFileType: LanguageFileType(KotlinLanguage) {
    override fun getName() = "KOTLIN"

    override fun getDescription() = "Kotlin programming language"

    override fun getDefaultExtension() = "kt"

    override fun getIcon(): Icon =
        // TODO kotlin icon
        AllIcons.FileTypes.Java
}
