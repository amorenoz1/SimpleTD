#ifndef WINDOW_H
#define WINDOW_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <engine/draw_proc.hpp>

namespace Engine {
   class Window {
      private:
         GLFWwindow *window;

         const int width;
         const int height;
         const char *title;

      public:
         Window(const int w, const int h, const char *t)
            : width(w), height(h), title(t) {
               init();
            }
         ~Window();

         void init();
         void pollEvents();
         void clear();
         void clearColor(Color color);
         void swapBuffers();
         bool windowShouldClose();
   };
} // namespace engine
#endif
