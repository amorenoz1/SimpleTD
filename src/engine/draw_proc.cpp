#include <glad/glad.h>
#include <cstring>
#include <engine/draw_proc.hpp>
#include <engine/draw_proc_util.hpp>
#include <app/app_info.hpp>
#include <cstdio>

namespace Engine {


   Square::Square(float x1, float y1, float sLength1, Color color1) {
      x = x1;
      y = y1;
      EBO = 0;
      VAO = 0;
      VBO = 0;
      sLength = sLength1;
      color = color1;
      isInitialized = false;
      indeces = new unsigned int[6];
      vertices = new float[20];
      shader = new Shader("shaders/shape_vshader.glsl", "shaders/shape_fshader.glsl", nullptr);
   }

   void Square::init() {
      if (!isInitialized) {
         update();

         glGenVertexArrays(1, &VAO);
         glGenBuffers(1, &VBO);
         glGenBuffers(1, &EBO);

         glBindVertexArray(VAO);

         glBindBuffer(GL_ARRAY_BUFFER, VBO);
         glBufferData(GL_ARRAY_BUFFER, 20 * sizeof(float), vertices, GL_DYNAMIC_DRAW);

         glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
         glBufferData(GL_ELEMENT_ARRAY_BUFFER, 6 *sizeof(unsigned int), indeces, GL_DYNAMIC_DRAW);

         glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)0);
         glEnableVertexAttribArray(0);

         glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(2 * sizeof(float)));
         glEnableVertexAttribArray(1);

         isInitialized = true;
      }
   }

   void Square::draw() const{
      shader->use();
      glBindVertexArray(VAO);
      glBindBuffer(GL_ARRAY_BUFFER, VBO);
      glBufferData(GL_ARRAY_BUFFER, 20 * sizeof(float), vertices, GL_DYNAMIC_DRAW);
      glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);

      glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
   }

   void Square::cleanup() {
      glDeleteVertexArrays(1, &VAO);
      glDeleteBuffers(1 , &VBO);
      glDeleteBuffers(1, &EBO);
   }

   void Square::update() {
      float xndc = scrCoordsToNdc_x(x);
      float yndc = scrCoordsToNdc_y(y);
      float dxndc = scrCoordsToNdc_x(x + sLength);
      float dyndc = scrCoordsToNdc_y(y + sLength);
      float myCol[3] = {rgbToColor(color.r), rgbToColor(color.g), rgbToColor(color.b)};

      float vertexBuffer[] = {
         xndc, yndc, myCol[0], myCol[1], myCol[2],
         dxndc, yndc, myCol[0], myCol[1], myCol[2],
         dxndc, dyndc, myCol[0], myCol[1], myCol[2],
         xndc, dyndc, myCol[0], myCol[1], myCol[2],
      };


      std::memcpy(vertices, vertexBuffer, sizeof(vertexBuffer));

      unsigned int indicesBuffer[] = {
         0, 1, 2,
         0, 3, 2
      };

      std::memcpy(indeces, indicesBuffer, sizeof(indicesBuffer));
   }

   Square::~Square() {
        
   }

   Drawable::~Drawable() {
      delete shader;
      delete[] indeces;
      delete[] vertices;
   }

   void Drawable::cleanup() {

   }

   void Drawable::init() {

   }

   void Drawable::update() {

   }

   void Drawable::draw() const {

   }

}
