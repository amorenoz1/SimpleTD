#ifndef DRAW_PROC_H
#define DRAW_PROC_H

#include <glad/glad.h>
#include <engine/shader_utils.hpp>

namespace Engine {
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
         
         bool isInitialized;
         int ID;

         virtual void draw() const;
         virtual void init();
         virtual void update();
         virtual void cleanup();
   };

   class Square : public Drawable {
      public:
         float sLength;
         float x, y;
         Color color;

         Square(float x, float y, float sLength, Color color);
         ~Square();

         void draw() const override;
         void init() override;
         void update() override;
         void cleanup() override;
   };

   class Triangle : Drawable {

   };

   class Rectangle : Drawable {

   };

} // namespace engine

#endif
