#include <iostream>
#include <string>

using namespace std;

const long stdCode[7] = {199711L, 201103L, 201402L, 201703L,
                         202002L, 202302L, 202612L};
const string stdName[7] = {"Pre-C++11", "C++11", "C++14", "C++17",
                           "C++20",     "C++23", "C++26"};

long determineCompilerVersion() {

#if defined(_MSVC_LANG)
  return _MSVC_LANG;
#elif defined(_MSVC_VER)
  // bail out from this if older version of vs code is used
  return -1;
#else
  return __cplusplus;
#endif
}

int main() {
  long standard = determineCompilerVersion();

  if (standard == -1){
    cout << "NONONONONONO";
    return 0;
  }

  for (int i = 0; i < 7; i++) {
      if (standard == stdCode[i]){
      cout << "here it's " << stdName[i] <<  " and name is:  " << standard;
    }
  }

  return 0;
}
