#ifndef VECTOR2D_H
#define VECTOR2D_H

#include <glm/glm.hpp>

namespace Engine {

class Vector2D {
   protected:

   public:  
      float x, y;

      Vector2D ();
      Vector2D (float x, float y);
      
      glm::vec2 to_vec2();
      void vec2_to_Vector2D (glm::vec2 a);
};

}

#endif
