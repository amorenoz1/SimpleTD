#ifndef MENU_SCENE_H
#define MENU_SCENE_H

#include <engine/draw_proc.hpp>
#include <engine/scene.hpp>

namespace Game {

   class MenuScene : public Engine::Scene{
      private: 
         Engine::Square *redsquare;

      public:
         MenuScene(SceneType *st);
         ~MenuScene();

         void init() override;
         void render(float *acc) override;
         void cleanup() override;
   };

}
#endif
