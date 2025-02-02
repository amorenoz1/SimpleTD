#include "engine/object_manager.hpp"
#include "game/game_color_pallette.hpp"
#include <game/end_scene.hpp>

namespace Game {

   EndScene::EndScene(SceneType *scenet) {
      objectManager = new Engine::ObjectManager(); 
      st = scenet;
      isInitialized = false;
   }

   void EndScene::init() {
      if (!isInitialized) {
      purplesquare = new Engine::Square(0, 0, 100, LAVENDER_BLUSH);
      objectManager->add(purplesquare);



      objectManager->init();
      isInitialized = true;
      }
   }

   void EndScene::render() {
      purplesquare->x += 0.1;
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

