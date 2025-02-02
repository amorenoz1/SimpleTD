#include <engine/draw_proc_util.hpp>
#include <app/app_info.hpp>

namespace Engine {

   float scrCoordsToNdc_x (float x) {
      return ((2 * x) / static_cast<float>(WIDTH)) - 1;
   }

   float scrCoordsToNdc_y (float y) {
      return (1 - (2 * y) / static_cast<float>(HEIGHT));
   }

   float rgbToColor (float col) {
      return col/255.0f;
   }

}
