#ifndef SHADER_UTILS_H
#define SHADER_UTILS_H

#include <glad/glad.h>

namespace Engine {

   class Shader {
      private: 
         inline void linkShader();
         GLuint compileShader(const char *shaderSource, GLenum shaderType);

      public:
         unsigned int ID;

         Shader(const char *vertexPath, const char *fragmentPath, const char *geometryPath);

         void use();
   };

}

#endif
