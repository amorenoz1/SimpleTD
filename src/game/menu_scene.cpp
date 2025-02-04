#include "app/app_info.hpp"
#include "engine/input_handler.hpp"
#include "engine/object_manager.hpp"
#include "game/game_color_pallette.hpp"
#include <game/menu_scene.hpp>

namespace Game {

   MenuScene::MenuScene(SceneType *scenet) {
      objectManager = new Engine::ObjectManager(); 
      st = scenet;
      isInitialized = false;
      isSwitching = false;
   }

   void MenuScene::init() {
      if (!isInitialized) {
      redsquare = new Engine::Square(200, 0, 100, RED);
      objectManager->add(redsquare);



      objectManager->init();
      isInitialized = true;
      isSwitching = false;
      }
   }

   void MenuScene::render(float *acc) {
      if (Engine::InputHandler::isKeyPressed(GLFW_KEY_1)) {
         *st = GAME;
         isSwitching = true;
      };

      while (*acc >= TICK_TIME) {
         *acc -= TICK_TIME;
      }

      objectManager->render();
   }

   void MenuScene::cleanup() {
      objectManager->cleanup();
      redsquare = nullptr;
      isInitialized = false;
   }

   MenuScene::~MenuScene() {
      delete objectManager;
      delete st;
   }
}

