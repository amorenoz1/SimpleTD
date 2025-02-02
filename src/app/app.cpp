#include <app/app.hpp>
#include <app/app_info.hpp>
#include <engine/window.hpp>
#include <game/game_color_pallette.hpp>
#include <game/end_scene.hpp>

namespace App {

   void App::run() {
      Engine::Window window(WIDTH, HEIGHT, TITLE);
      Game::SceneType type = Game::END;
      Game::EndScene *es = new  Game::EndScene(&type);

      while (!window.windowShouldClose()) {
         window.clear();
         window.clearColor(RASIN_BLACK);

         es->init();
         es->render();

         window.pollEvents();
         window.swapBuffers();
      }
      es->cleanup();
   }
}
