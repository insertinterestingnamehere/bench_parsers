#pragma once

#include <chrono>
#include <limits>

#include <cstdio>
#include <ctime>

//! A simple timer
class Timer {
  typedef std::chrono::steady_clock clockTy;
  std::chrono::time_point<clockTy> startT, stopT;

public:

  Timer() = default;

  void start() { startT = clockTy::now(); }

  void stop() { stopT = clockTy::now(); }

  unsigned long get() const {
    return std::chrono::duration_cast<std::chrono::milliseconds>(stopT - startT).count();
  }

  unsigned long get_usec() const {
    return std::chrono::duration_cast<std::chrono::microseconds>(stopT - startT).count();
  }
};

