#include <engine/object_manager.hpp>

namespace Engine {

   ObjectManager::ObjectManager() {
      assignableID = 0;
      isInitialized = true;
   }

   ObjectManager::~ObjectManager() {}

   void ObjectManager::init() {
      for (Drawable *obj : objs) {
         if (obj) {
            obj->init();
         }
      }
   }

   void ObjectManager::render() {
      for (Drawable *obj : objs) {
         obj->update();
         obj->draw();
      }
   }

   void ObjectManager::cleanup() {
      for (Drawable *obj : objs) {
         if (obj) {
            obj->cleanup();
            delete obj;
            isInitialized = false;
         }
      }

      objs.clear();
   }

   void ObjectManager::add(Drawable *e) {
         objs.push_back(e);
         e->ID = assignableID;
         assignableID++;
   }

   void ObjectManager::remove(unsigned int ID) {
      for (Drawable *obj : objs) {
         if (obj) {
            if (obj->ID == ID) {
               obj->cleanup();
               delete obj;
            }
         }
      }
   }
}
