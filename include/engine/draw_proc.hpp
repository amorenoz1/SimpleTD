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

   class Triangle : public Drawable {
      public:
         float x, y, x1, y1, x2, y2;
         Color color;

         Triangle(float x, float y, float x1, float y1, float x2, float y2, Color color);
         ~Triangle();

         void draw() const override;
         void init() override;
         void update() override;
         void cleanup() override;
   };

   class Rectangle : public Drawable {
      public:
         float x, y;
         float width, height;
         Color color;

         Rectangle(float x, float y, float width, float length, Color color);
         ~Rectangle();

         void draw() const override;
         void init() override;
         void update() override;
         void cleanup() override;
   };

} // namespace engine

#endif
