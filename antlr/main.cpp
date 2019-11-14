/* Copyright (c) 2012-2017 The ANTLR Project. All rights reserved.
 * Use of this file is governed by the BSD 3-clause license that
 * can be found in the LICENSE.txt file in the project root.
 */

//
//  main.cpp
//  antlr4-cpp-demo
//
//  Created by Mike Lischke on 13.03.16.
//

#include <iostream>

#include "antlr4-runtime.h"
#include "Python3Lexer.h"
#include "Python3Parser.h"

#include "Timer.hpp"

std::string read_all(const std::string& path) {
  std::ostringstream buf;
  std::ifstream input (path.c_str());
  buf << input.rdbuf();
  return buf.str();
}

using namespace antlr4;

int main(int argc, const char **argv) {
  if (argc != 3) {
    std::cout << "Unexpected number of arguments" << std::endl;
    return 1;
  }

  std::size_t num_runs = std::stoi(argv[2]);
  std::cout.precision(17);
  Timer t;

  for (std::size_t i = 0; i <= num_runs; i++) {
    std::string infile_name(argv[1]);
    std::string infile_contents = read_all(infile_name);

    ANTLRInputStream input(infile_contents.c_str());
    Python3Lexer lexer(&input);
    CommonTokenStream tokens(&lexer);

    tokens.fill();
    //for (auto token : tokens.getTokens()) {
    //  std::cout << token->toString() << std::endl;
    //}
    Python3Parser parser(&tokens);
    t.start();
    tree::ParseTree* tree = parser.file_input();
    t.stop();
    // Apparently there is some kind of setup going on
    // the first time the library is called.
    // Because of this, don't count the first time.
    //if (i == 0) continue; 
    std::cout << t.get_usec() / 1000. << std::endl;
  }

  return 0;
}
