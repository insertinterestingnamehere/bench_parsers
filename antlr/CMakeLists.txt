project(pyparse-antlr)

set(pyparse-antlr-src
    Python3Lexer.cpp
    Python3Parser.cpp
    Python3BaseListener.cpp
    Python3BaseVisitor.cpp
    Python3Listener.cpp
    Python3Visitor.cpp
    main.cpp
)

include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/runtime/runtime/src
  ${CMAKE_CURRENT_SOURCE_DIR}/runtime/runtime/src/misc
  ${CMAKE_CURRENT_SOURCE_DIR}/runtime/runtime/src/atn
  ${CMAKE_CURRENT_SOURCE_DIR}/runtime/runtime/src/dfa
  ${CMAKE_CURRENT_SOURCE_DIR}/runtime/runtime/src/tree
  ${CMAKE_CURRENT_SOURCE_DIR}/runtime/runtime/src/support
)

add_subdirectory(runtime)

add_executable(pyparse-antlr Python3Lexer.cpp Python3Parser.cpp Python3BaseListener.cpp Python3Listener.cpp main.cpp)

add_dependencies(pyparse-antlr antlr4_static)
target_link_libraries(pyparse-antlr antlr4_static)
