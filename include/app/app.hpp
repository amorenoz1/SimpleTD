#ifndef APP_H
#define APP_H

namespace App {
   enum AppState {
      MENU,
      GAME,
      END,
   };

   class App {
      public:
         static void run();
   };

}

#endif
