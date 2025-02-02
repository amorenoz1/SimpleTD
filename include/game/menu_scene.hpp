#ifndef MENU_SCENE_H
#define MENU_SCENE_H

#include <engine/draw_proc.hpp>
#include <engine/scene.hpp>

namespace Game {

   class MenuScene : public Engine::Scene{
      private: 
         Engine::Square *redSquare;

      public:
         MenuScene(SceneType *st);
         ~MenuScene();

         void init() override;
         void render() override;
         void cleanup() override;
   };

}
#endif
