#include "app/app_info.hpp"
#include "engine/input_handler.hpp"
#include "engine/object_manager.hpp"
#include "game/game_color_pallette.hpp"
#include <game/end_scene.hpp>

namespace Game {

   EndScene::EndScene(SceneType *scenet) {
      objectManager = new Engine::ObjectManager(); 
      st = scenet;
      isInitialized = false;
      isSwitching = false;
   }

   void EndScene::init() {
      if (!isInitialized) {
      purplesquare = new Engine::Square(0, 0, 100, LAVENDER_BLUSH);
      triangle = new Engine::Triangle(200, 300, 300, 300, 250, 350, BLUE);

      objectManager->add(purplesquare);
      objectManager->add(triangle);



      objectManager->init();
      isInitialized = true;
      isSwitching = false;
      }
   }

   void EndScene::render(float *acc) {
      if (Engine::InputHandler::isKeyPressed(GLFW_KEY_4)) {
         *st = MENU;
         isSwitching = true;
      };
      while (*acc >= TICK_TIME) {
         *acc -= TICK_TIME;
      }

      objectManager->render();
   }

   void EndScene::cleanup() {
      objectManager->cleanup();
      purplesquare = nullptr;
      isInitialized = false;
   }

   EndScene::~EndScene() {
      delete objectManager;
      delete st;
   }
}

