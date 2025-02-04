#ifndef GAME_SCENE_H
#define GAME_SCENE_H

#include <engine/scene.hpp>

namespace Game {

   class GameScene : public Engine::Scene{
      private: 
         Engine::Square *bluesquare;

      public:
         GameScene(SceneType *st);
         ~GameScene();

         void init() override;
         void render(float *acc) override;
         void cleanup() override;
   };

}

#endif
