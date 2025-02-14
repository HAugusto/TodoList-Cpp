# Define a versão mínima do CMake
cmake_minimum_required(VERSION 3.10)

# Define o nome do projeto
project(TodoListCpp)

# find_package(Qt6 REQUIRED COMPONENTS Core Widgets)

set(SOURCES
    src/main.cpp
)

# Cria o executável a partir do nome do projeto e dos arquivos fonte
add_executable(TodoList ${SOURCES})

# target_link_libraries(TodoListCpp Qt6::Core Qt6::Widgets)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
