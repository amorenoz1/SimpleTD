#include "app/app_info.hpp"
#include "engine/input_handler.hpp"
#include "engine/object_manager.hpp"
#include "game/game_color_pallette.hpp"
#include "game/scene_type.hpp"
#include <game/game_scene.hpp>

namespace Game {

   GameScene::GameScene(SceneType *scenet) {
      objectManager = new Engine::ObjectManager(); 
      st = scenet;
      isInitialized = false;
      isSwitching = false;
   }

   void GameScene::init() {
      if (!isInitialized) {
      bluesquare = new Engine::Square(100, 0, 100, BLUE);
      objectManager->add(bluesquare);



      objectManager->init();
      isInitialized = true;
      isSwitching = false;
      }
   }

   void GameScene::render(float *acc) {
      if (Engine::InputHandler::isKeyPressed(GLFW_KEY_3)) {
         *st = END;
         isSwitching = true;
      };

      while (*acc >= TICK_TIME) {
         *acc -= TICK_TIME;
      }

      objectManager->render();
   }

   void GameScene::cleanup() {
      objectManager->cleanup();
      bluesquare = nullptr;
      isInitialized = false;
   }

   GameScene::~GameScene() {
      delete objectManager;
      delete st;
   }
}

