#ifndef END_SCENE_H
#define END_SCENE_H

#include <engine/draw_proc.hpp>
#include <engine/scene.hpp>

namespace Game {
   
   class EndScene: public Engine::Scene{
      private: 
         Engine::Square *purplesquare;

      public:
         EndScene(SceneType *st);
         ~EndScene();

         void init() override;
         void render() override;
         void cleanup() override;
   };

}

#endif
