#include "engine/input_handler.hpp"
#include <app/app.hpp>
#include <app/app_info.hpp>
#include <engine/window.hpp>
#include <game/game_color_pallette.hpp>
#include <game/end_scene.hpp>
#include <game/game_scene.hpp>
#include <game/menu_scene.hpp>

namespace App {

   void App::run() {
      Engine::Window window(WIDTH, HEIGHT, TITLE);
      Engine::InputHandler::init(&window);
      Engine::Scene *current = nullptr;

      Game::SceneType type = Game::END;
      Game::EndScene *es = new Game::EndScene(&type);
      Game::GameScene *gs = new Game::GameScene(&type);
      Game::MenuScene *ms = new Game::MenuScene(&type);

      current = es;

      float previous_time = (float)glfwGetTime();
      float acc = 0.0f;

      while (!window.windowShouldClose()) {
         window.clear();
         window.clearColor(RASIN_BLACK);

         float current_time = (float)glfwGetTime();
         float delta_time = current_time - delta_time;
         previous_time = current_time;
         acc += delta_time;

         window.pollEvents();

         if (current->isSwitching) {
            current->cleanup();

            switch(type) {
               case Game::MENU:
                  current = ms;
                  break;

               case Game::GAME:
                  current = gs;
                  break;

               case Game::END:
                  current = es;
                  break;
            }
         }

         current->init();
         current->render(&acc);

         window.swapBuffers();
      }
      
   }
}
