#include <app/app_info.hpp>
#include <cstring>
#include <engine/draw_proc.hpp>
#include <engine/draw_proc_util.hpp>
#include <glad/glad.h>

namespace Engine {

   Square::Square(float x1, float y1, float sLength1, Color color1) {
      x = x1;
      y = y1;
      EBO = 0;
      VAO = 0;
      VBO = 0;
      ID = 0;
      sLength = sLength1;
      color = color1;
      isInitialized = false;
      indeces = new unsigned int[6];
      vertices = new float[20];
      shader = new Shader("shaders/shape_vshader.glsl",
            "shaders/shape_fshader.glsl", nullptr);
   }

   void Square::init() {
      if (!isInitialized) {
         update();

         glGenVertexArrays(1, &VAO);
         glGenBuffers(1, &VBO);
         glGenBuffers(1, &EBO);

         glBindVertexArray(VAO);

         glBindBuffer(GL_ARRAY_BUFFER, VBO);
         glBufferData(GL_ARRAY_BUFFER, 20 * sizeof(float), vertices,
               GL_DYNAMIC_DRAW);

         glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
         glBufferData(GL_ELEMENT_ARRAY_BUFFER, 6 * sizeof(unsigned int), indeces,
               GL_DYNAMIC_DRAW);

         glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
               (void *)0);
         glEnableVertexAttribArray(0);

         glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
               (void *)(2 * sizeof(float)));
         glEnableVertexAttribArray(1);

         isInitialized = true;
      }
   }

   void Square::draw() const {
      shader->use();
      glBindVertexArray(VAO);
      glBindBuffer(GL_ARRAY_BUFFER, VBO);
      glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);

      glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
   }

   void Square::cleanup() {
      glDeleteVertexArrays(1, &VAO);
      glDeleteBuffers(1, &VBO);
      glDeleteBuffers(1, &EBO);
   }

   void Square::update() {
      float xndc = scrCoordsToNdc_x(x);
      float yndc = scrCoordsToNdc_y(y);
      float dxndc = scrCoordsToNdc_x(x + sLength);
      float dyndc = scrCoordsToNdc_y(y + sLength);
      float myCol[3] = {rgbToColor(color.r), rgbToColor(color.g),
         rgbToColor(color.b)};

      float vertexBuffer[] = {
         xndc,     yndc,     myCol[0], myCol[1], myCol[2], dxndc,    yndc,
         myCol[0], myCol[1], myCol[2], dxndc,    dyndc,    myCol[0], myCol[1],
         myCol[2], xndc,     dyndc,    myCol[0], myCol[1], myCol[2],
      };

      std::memcpy(vertices, vertexBuffer, sizeof(vertexBuffer));

      unsigned int indicesBuffer[] = {0, 1, 2, 0, 3, 2};

      std::memcpy(indeces, indicesBuffer, sizeof(indicesBuffer));
   }

   Square::~Square() {}

   Triangle::Triangle(float x, float y, float x1, float y1, float x2, float y2, Color color) {
      this->x = x;
      this->y = y;
      this->x1 = x1;
      this->y1 = y1;
      this->x2 = x2;
      this->y2 = y2;
      this->color = color;

      this->EBO = 0;
      this->VBO = 0;
      this->VAO = 0;
      this->ID = 0;
      this->isInitialized = false;
      this->vertices = new float [15];
      this->indeces = new unsigned int [4];
      this->shader = new Shader("shaders/shape_vshader.glsl",
            "shaders/shape_fshader.glsl", nullptr);
   }

   void Triangle::init() {
      if (!isInitialized) {
         update();

         glGenVertexArrays(1, &VAO);
         glGenBuffers(1, &VBO);
         glGenBuffers(1, &EBO);

         glBindVertexArray(VAO);

         glBindBuffer(GL_ARRAY_BUFFER, VBO);
         glBufferData(GL_ARRAY_BUFFER, 15 * sizeof(float), vertices,
               GL_DYNAMIC_DRAW);

         glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
         glBufferData(GL_ELEMENT_ARRAY_BUFFER, 4 * sizeof(unsigned int), indeces,
               GL_DYNAMIC_DRAW);

         glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
               (void *)0);
         glEnableVertexAttribArray(0);

         glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
               (void *)(2 * sizeof(float)));
         glEnableVertexAttribArray(1);

         isInitialized = true;
      }
   }

   void Triangle::update() {
      float xndc = scrCoordsToNdc_x(x);
      float yndc = scrCoordsToNdc_y(y); 
      float x1ndc = scrCoordsToNdc_x(x1);
      float y1ndc = scrCoordsToNdc_y(y1);
      float x2ndc = scrCoordsToNdc_x(x2);
      float y2ndc = scrCoordsToNdc_y(y2);
      float myCol[] = {rgbToColor(color.r), rgbToColor(color.g), rgbToColor(color.b)};

      float vertexBuffer[] = {
         xndc,  yndc,  myCol[0], myCol[1], myCol[2],
         x1ndc, y1ndc, myCol[0], myCol[1], myCol[2],
         x2ndc, y2ndc, myCol[0], myCol[1], myCol[2]
      };
      
      std::memcpy(vertices, vertexBuffer, sizeof(vertexBuffer));

      unsigned int indicesBuffer[] = {0, 1, 2, 0};

      std::memcpy(indeces, indicesBuffer, sizeof(indicesBuffer));
   }

   void Triangle::draw() const{
      shader->use();
      glBindVertexArray(VAO);
      glBindBuffer(GL_ARRAY_BUFFER, VBO);
      glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);

      glDrawElements(GL_TRIANGLES, 4, GL_UNSIGNED_INT, 0);
   }

   void Triangle::cleanup() {
      glDeleteVertexArrays(1, &VAO);
      glDeleteBuffers(1, &VBO);
      glDeleteBuffers(1, &EBO);
   }
   
   Triangle::~Triangle() {}

   Rectangle::Rectangle(float x, float y, float width, float length, Color color) {
      this->x = x;
      this->y = y;
      this->width = width;
      this->height= length;
      this->color = color;

      this->EBO = 0;
      this->VBO = 0;
      this->VAO = 0;
      this->ID = 0;
      this->isInitialized = false;
      this->vertices = new float [20];
      this->indeces = new unsigned int [6];
      this->shader = new Shader("shaders/shape_vshader.glsl",
            "shaders/shape_fshader.glsl", nullptr);

   }

   void Rectangle::init() {
      if (!isInitialized) {
         update();

         glGenVertexArrays(1, &VAO);
         glGenBuffers(1, &VBO);
         glGenBuffers(1, &EBO);

         glBindVertexArray(VAO);

         glBindBuffer(GL_ARRAY_BUFFER, VBO);
         glBufferData(GL_ARRAY_BUFFER, 20 * sizeof(float), vertices,
               GL_DYNAMIC_DRAW);

         glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
         glBufferData(GL_ELEMENT_ARRAY_BUFFER, 6 * sizeof(unsigned int), indeces,
               GL_DYNAMIC_DRAW);

         glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
               (void *)0);
         glEnableVertexAttribArray(0);

         glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
               (void *)(2 * sizeof(float)));
         glEnableVertexAttribArray(1);

         isInitialized = true;
      }
   }

   void Rectangle::update() {
      float xndc = scrCoordsToNdc_x(x);
      float yndc = scrCoordsToNdc_y(y);
      float dxndc = scrCoordsToNdc_x(x + width);
      float dyndc = scrCoordsToNdc_y(y + height);
      float myCol[3] = {rgbToColor(color.r), rgbToColor(color.g),
         rgbToColor(color.b)};

      float vertexBuffer[] = {
         xndc,     yndc,     myCol[0], myCol[1], myCol[2], dxndc,    yndc,
         myCol[0], myCol[1], myCol[2], dxndc,    dyndc,    myCol[0], myCol[1],
         myCol[2], xndc,     dyndc,    myCol[0], myCol[1], myCol[2],
      };

      std::memcpy(vertices, vertexBuffer, sizeof(vertexBuffer));

      unsigned int indicesBuffer[] = {0, 1, 2, 0, 3, 2};

      std::memcpy(indeces, indicesBuffer, sizeof(indicesBuffer));
   }

   void Rectangle::draw() const{
      shader->use();
      glBindVertexArray(VAO);
      glBindBuffer(GL_ARRAY_BUFFER, VBO);
      glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);

      glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
   }

   void Rectangle::cleanup() {
      glDeleteVertexArrays(1, &VAO);
      glDeleteBuffers(1, &VBO);
      glDeleteBuffers(1, &EBO);
   }

   Rectangle::~Rectangle() {}

   Drawable::~Drawable() {
      delete shader;
      delete[] indeces;
      delete[] vertices;
   }

   void Drawable::cleanup() {}

   void Drawable::init() {}

   void Drawable::update() {}

   void Drawable::draw() const {}

} // namespace Engine
