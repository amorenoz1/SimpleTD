#ifndef END_SCENE_H
#define END_SCENE_H

#include <engine/draw_proc.hpp>
#include <engine/scene.hpp>

namespace Game {
   
   class EndScene: public Engine::Scene{
      private: 
         Engine::Square *purplesquare;
         Engine::Triangle *triangle;

      public:
         EndScene(SceneType *st);
         ~EndScene();

         void init() override;
         void render(float *acc) override;
         void cleanup() override;
   };

}

#endif
