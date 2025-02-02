#include <engine/vector2d.hpp>

namespace Engine {

   Vector2D::Vector2D() {
      this->x = 0.0f;
      this->y = 0.0f;
   }

   Vector2D::Vector2D(float x, float y) {
      this->x = x;
      this->y = y;
   }

   glm::vec2 Vector2D::to_vec2() {
      glm::vec2 result = {this->x, this->y};
      return result;
   }

   void Vector2D::vec2_to_Vector2D(glm::vec2 a) {
      this->x = a[0];
      this->y = a[1];
   }

}
