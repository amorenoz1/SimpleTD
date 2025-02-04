#ifndef SCENE_MANAGER_H
#define SCENE_MANAGER_H

#include <engine/object_manager.hpp>
#include <game/scene_type.hpp>

namespace Engine {
   
   class Scene{
      protected:
         ObjectManager *objectManager;
         Game::SceneType *st;
         bool isInitialized;

      public:
         bool isSwitching;

         virtual ~Scene();

         virtual void init();
         virtual void render(float *acc);
         virtual void cleanup();
   };
}

#endif
