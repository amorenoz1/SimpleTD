#include <app/app_info.hpp>
#include <engine/draw_proc.hpp>
#include <engine/window.hpp>

int main() {
   engine::Window window(WIDTH, HEIGHT, TITLE);
   
   engine::Color color = { 
      .r = 252.0f,
      .g = 168.0f,
      .b = 3.0f
   };
   engine::Square square(0.0f, 0.0f, 50.0f, color);

   square.init();

   float x = 0;
   while (!window.windowShouldClose()) {
   
      window.clear();
      square.x += x;
      square.update();
      square.draw();

      window.pollEvents();
      window.swapBuffers();
      x += 0.01;
   }

   return 0;
}
