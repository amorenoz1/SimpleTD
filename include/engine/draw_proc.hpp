#ifndef DRAW_PROC_H
#define DRAW_PROC_H

#include <glad/glad.h>
#include <engine/shader_utils.hpp>

namespace engine {
   struct Texture {
      const char *texturePath;
   };

   struct Color {
      float r;
      float g;
      float b;
   };

   class Drawable {
      protected:
         GLuint VAO;
         GLuint VBO;
         GLuint EBO;
         Shader *shader;

         float *vertices;
         unsigned int *indeces;
         
      public:
         virtual ~Drawable();
         
         bool isReferenced;

         virtual void draw() const = 0;
         virtual void init() = 0;
         virtual void update() = 0;
         virtual void cleanup() = 0;
   };

   class Square : Drawable {
      private:
         float sLength;

      public:
         float x, y;
         Color color;

         Square(float x, float y, float sLength, Color color);
         ~Square();

         void draw() const override;
         void init() override;
         void update() override;
         void cleanup() override;
   };

} // namespace engine

#endif
