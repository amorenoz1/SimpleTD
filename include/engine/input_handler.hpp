#ifndef INPUT_HANDLER_H
#define INPUT_HANDLER_H

#include "engine/window.hpp"

namespace Engine {
   class InputHandler {
      private:
         static InputHandler *instance;

         static Window *window;
         double mX, mY, dmX, dmY;
         double scrollX, scrollY;

         bool isDragging;
         bool mouseButtonPressed[3];
         bool keyPressed[350];

         InputHandler();
         ~InputHandler();

         static void setWindow(Window *w);

      public:

         static InputHandler *getInstance();
         static void init(Window *w);

         static void keyCallback (GLFWwindow *window, int key, int scancode, int action, int mods);
         static void mousePosCallback (GLFWwindow *window, double xpos, double ypos);
         static void mouseButtonCallback (GLFWwindow *window, int button, int action, int mods);
         static void mouseScrollCallback (GLFWwindow *window, double xOffset, double yOffset);

         static void endFrame();
         static bool isKeyPressed(int key);
         static bool isMouseDragging();
         static bool isMouseButtonDown(int button);
         static float getMouseX();
         static float getMouseY();
         static float getMouseDx();
         static float getMouseDy();
         static float getMouseScrollX();
         static float getMouseScrollY();
   };
}

#endif
