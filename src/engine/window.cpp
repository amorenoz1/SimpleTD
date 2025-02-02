#include "engine/draw_proc_util.hpp"
#include <cstdlib>
#include <iostream>
#include <engine/window.hpp>

namespace Engine {

void Window::init() {

   if (!glfwInit()) {
      std::cerr << "failed to initialize GLFW!" << std::endl;
      exit(-1);
   }

   glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
   glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
   glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
   glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);
   
   if (__APPLE__) {
      glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
   }

   window = glfwCreateWindow(width, height, title, nullptr, nullptr);

   if (!window) {
      std::cerr << "failed to create GLFW Window!" << std::endl;
      glfwTerminate();
      exit(-1);
   }

   glfwMakeContextCurrent(window);
   
   if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
      std::cerr << "failed to initialize GLAD!" << std::endl;
      exit(-1);
   }

}

void Window::pollEvents() {
   glfwPollEvents();
}

void Window::clear() {
   glClear(GL_COLOR_BUFFER_BIT);
}

void Window::clearColor(Color color) {
   glClearColor(rgbToColor(color.r), rgbToColor(color.g), rgbToColor(color.b), 1.0f);
}

void Window::swapBuffers() {
   glfwSwapBuffers(window);
}


bool Window::windowShouldClose() {
   return glfwWindowShouldClose(window);
}
Window::~Window() {
   glfwTerminate();
}

}
