#include <engine/scene.hpp>

namespace Engine {
   
   Scene::~Scene() {
      delete objectManager;
   }
   
   void Scene::init() {}
   void Scene::cleanup() {}
   void Scene::render(float *acc) {}
}
