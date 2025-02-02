#include "glad/glad.h"
#include <engine/shader_utils.hpp>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

namespace Engine {
   void Shader::linkShader() {
      glLinkProgram(ID);

      int success;
      char infoLog[512];

      glGetProgramiv(ID, GL_LINK_STATUS, &success);
      if (!success) {
         glGetProgramInfoLog(ID, 512, NULL, infoLog);
         std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" <<
            infoLog << std::endl;
      }
   }

   GLuint Shader::compileShader(const char *shaderSource, GLenum shaderType){
      int success;
      char infoLog[512];

      GLuint shader = glCreateShader(shaderType);
      glShaderSource(shader, 1, &shaderSource, NULL);
      glCompileShader(shader);

      glGetShaderiv(shader, GL_COMPILE_STATUS, &success);

      if (!success) {

         glGetShaderInfoLog(shader, 512, NULL, infoLog);

         switch (shaderType) {
            case GL_VERTEX_SHADER:
               std::cout << "ERROR::VERTEX_SHADER::COMPILATION::FAILED\n"
                  << infoLog << std::endl;
               break;
            case GL_FRAGMENT_SHADER:
               std::cout << "ERROR::FRAGMENT_SHADER::COMPILATION::FAILED\n"
                  << infoLog << std::endl;
               break;
            case GL_GEOMETRY_SHADER:
               std::cout << "ERROR::GEOMETRY_SHADER:COMPILATION::FAILED\n"
                  << infoLog << std::endl;
               break;
         }
      }
      return shader;
   }
   Shader::Shader(const char *vertexPath, const char *fragmentPath,
         const char *geometryPath) {

      ID = glCreateProgram();

      std::string vertexSource;
      std::string fragmentSource;
      std::string geometrySource;

      std::ifstream vShaderFile;
      std::ifstream fShaderFile;
      std::ifstream gShaderFile;

      const char *vShaderCode, *fShaderCode, *gShaderCode; 
      GLuint vertexShader, fragmentShader, geometryShader;

      try {

         std::stringstream vShaderStream, fShaderStream, gShaderStream;

         if (vertexPath) {
            vShaderFile.open(vertexPath);
            vShaderStream << vShaderFile.rdbuf();
            vShaderFile.close();
            vertexSource = vShaderStream.str();
            vShaderCode = vertexSource.c_str();

            if (!vShaderCode) {
               std::cout << "Vertex shader code not properly read!" << std::endl;
            }

            vertexShader = compileShader(vShaderCode, GL_VERTEX_SHADER);
            glAttachShader(ID, vertexShader);
         }

         if (fragmentPath) {
            fShaderFile.open(fragmentPath);
            fShaderStream << fShaderFile.rdbuf();
            fShaderFile.close();
            fragmentSource = fShaderStream.str();
            fShaderCode = fragmentSource.c_str();

            if (!fShaderCode) {
               std::cout << "Fragment shader code not properly read!" << std::endl;
            }

            fragmentShader = compileShader(fShaderCode, GL_FRAGMENT_SHADER);
            glAttachShader(ID, fragmentShader);
         }

         if (geometryPath) {
            gShaderFile.open(geometryPath);
            gShaderStream << gShaderFile.rdbuf();
            gShaderFile.close();
            geometrySource = gShaderStream.str();
            gShaderCode = geometrySource.c_str();

            if (!geometryShader) {
               std::cout << "Geometry shader code not properly read!" << std::endl;
            }

            geometryShader = compileShader(gShaderCode, GL_GEOMETRY_SHADER);
            glAttachShader(ID, geometryShader);
         }

      } catch (std::ifstream::failure e) {
         std::cout << "ERROR::SHADER::FILE_NOT_SUCCESSFULLY_READ" << std::endl;
      }

      linkShader();
      
      if (vertexPath) {
         glDeleteShader(vertexShader);
      }

      if (fragmentPath) {
         glDeleteShader(fragmentShader);
      }

      if (geometryPath) {
         glDeleteShader(geometryShader);
      }

   }

   void Shader::use() {
      glUseProgram(ID);
   }

} // namespace engine
