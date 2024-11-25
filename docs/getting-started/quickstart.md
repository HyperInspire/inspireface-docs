# Quick Start

## Download Release SDK

We provide pre-compiled SDKs for MacOS, Linux, Android, and iOS. You can download the SDKs from the [release page](https://github.com/HyperInspire/InspireFace/releases).

## Linux or MacOS

If you are using Linux or MacOS, you can use CMake to build your project with the SDK:

```cmakelists
project(MyApp)

set(CMAKE_CXX_STANDARD 14)

include_directories(inspireface/include)
link_directories(inspireface/lib)

add_executable(MyApp main.cpp)
target_link_libraries(MyApp inspireface)
```
