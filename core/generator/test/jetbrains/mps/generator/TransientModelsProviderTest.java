/*
 * Copyright 2003-2026 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.generator;

import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentAware;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.junit.Assert;
import org.junit.Test;

public class TransientModelsProviderTest implements EnvironmentAware {
  private Environment myEnv;

  @Override
  public void setEnvironment(@NotNull Environment env) {
    myEnv = env;
  }

  /**
   * A make cancelled while it transforms has associated a transient module with its task, but never reaches
   * {@link TransientModelsProvider#publishAll()}. Dropping the transients afterwards (the next make, or the project
   * dispose) used to fail with "Trying to unregister non-registered module".
   */
  @Test
  public void removeAllTransientsDropsModuleNeverPublished() {
    final MPSModuleRepository repo = myEnv.getPlatform().findComponent(MPSModuleRepository.class);
    final TransientModelsProvider provider = new TransientModelsProvider(repo, null);

    final TransientModelsModule published = provider.createModule("published");
    provider.associate(newTask(), published);
    repo.getModelAccess().runWriteAction(provider::publishAll);
    final TransientModelsModule unpublished = provider.createModule("unpublished");
    provider.associate(newTask(), unpublished);
    Assert.assertNotNull("publishAll() registers the module", published.getRepository());
    Assert.assertNull("the module associated after publishAll() is not registered", unpublished.getRepository());

    provider.removeAllTransients(true);

    Assert.assertNull("the published module is unregistered and disposed", published.getRepository());
    repo.getModelAccess().runReadAction(() -> {
      Assert.assertNull(repo.getModule(published.getModuleId()));
      Assert.assertFalse("the provider forgets both modules", provider.getModules().iterator().hasNext());
    });
  }

  private static GeneratorTask newTask() {
    return new GeneratorTask() {
      @Override
      public SModel getModel() {
        return null;
      }
    };
  }
}
