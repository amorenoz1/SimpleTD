#ifndef OBJECT_MANAGER_H
#define OBJECT_MANAGER_H

#include <engine/draw_proc.hpp>
#include <vector>
namespace Engine {
   
   class ObjectManager {
      private: 
         std::vector<Drawable*> objs;
         unsigned int assignableID;
         bool isInitialized;

      public:
         ObjectManager();
         ~ObjectManager();

         void init();
         void render();
         void cleanup();
         void add(Drawable *e);
         void remove(unsigned int ID);

   };
}

#endif

