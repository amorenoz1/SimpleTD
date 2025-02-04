#include <engine/input_handler.hpp>

namespace Engine {
   InputHandler *InputHandler::instance = nullptr;
   Window *InputHandler::window = nullptr;

   InputHandler::InputHandler() {
      mX = 0;
      mY = 0;
      dmX = 0;
      dmY = 0;
      scrollX = 0;
      scrollY = 0;
      isDragging = false;
   }

   InputHandler *InputHandler::getInstance() {
      if (instance == nullptr) {
         instance = new InputHandler();
      }

      return instance;
   }
   
   void InputHandler::setWindow(Window *w) {
      InputHandler::window = w;
   }

   void InputHandler::init(Window *w) {
      InputHandler::instance = getInstance();
      setWindow(w);
      glfwSetCursorPosCallback(window->getWindow(), InputHandler::mousePosCallback);
      glfwSetMouseButtonCallback(window->getWindow(), InputHandler::mouseButtonCallback);
      glfwSetScrollCallback(window->getWindow(), InputHandler::mouseScrollCallback);
      glfwSetKeyCallback(window->getWindow(), InputHandler::keyCallback);
   }

   void InputHandler::keyCallback(GLFWwindow *window, int key, int scancode, int action, int mods) {
      if (action == GLFW_PRESS) {
         instance->keyPressed[key] = true;
      } else if (action == GLFW_RELEASE) {
         instance->keyPressed[key] = false;
      }
   }

   void InputHandler::mousePosCallback(GLFWwindow *window, double xpos, double ypos) {
      instance->dmX = instance->mX;
      instance->dmY = instance->mY;
      instance->mX = xpos;
      instance->mY = ypos;
      instance->isDragging = instance->mouseButtonPressed[0] || instance->mouseButtonPressed[1] || instance->mouseButtonPressed[2];
   }

   void InputHandler::mouseScrollCallback(GLFWwindow *window, double xOffset, double yOffset) {
      instance->scrollX = xOffset;
      instance->scrollY = yOffset;
   }

   void InputHandler::mouseButtonCallback(GLFWwindow *window, int button, int action, int mods) {
      if (action == GLFW_PRESS) {
         if (button < 3)  {
            instance->mouseButtonPressed[button] = true;
         }
      } else if (action == GLFW_RELEASE) {
         if (button < 3) {
            instance->mouseButtonPressed[button] = false;
            instance->isDragging = false;
         }
      }
   }

   void InputHandler::endFrame() {
      instance->scrollX = 0;
      instance->scrollY = 0;
      instance->dmX = 0;
      instance->dmY = 0;
   }

   float InputHandler::getMouseX() {
      return (float)instance->mX;
   }

   float InputHandler::getMouseY() {
      return (float)instance->mY;
   }

   float InputHandler::getMouseDx() {
      return (float)(instance->dmX - instance->mX);
   }

   float InputHandler::getMouseDy() {
      return (float)(instance->dmY - instance->mY);
   }

   float InputHandler::getMouseScrollX() {
      return (float)(instance->scrollX);
   }

   float InputHandler::getMouseScrollY() {
      return (float)(instance->scrollY);
   }

   bool InputHandler::isMouseDragging() {
      return instance->isDragging;
   }

   bool InputHandler::isMouseButtonDown(int button) {
      if (button < 3) {
         return instance->mouseButtonPressed[button];
      } else {
         return false;
      }
   }

   bool InputHandler::isKeyPressed(int key) {
      return instance->keyPressed[key];
   }
}
