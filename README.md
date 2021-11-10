# cpprest
A repo. for practice REST

## Http Client Tutorial
* Install on OSX
```text
$ brew install cpprestsdk
```
* Setting up Includes and Namespaces
```c++
#include <cpprest/http_client.h>
#include <cpprest/filestream.h>

/* 
  Here is a list of other important header files in Casablanca, but we won't 
  be using them in this example: 

#include <cpprest/http_listener.h>              // HTTP server
#include <cpprest/json.h>                       // JSON library
#include <cpprest/uri.h>                        // URI library
#include <cpprest/ws_client.h>                  // WebSocket client
#include <cpprest/containerstream.h>            // Async streams backed by STL containers
#include <cpprest/interopstream.h>              // Bridges for integrating Async streams with STL and WinRT streams
#include <cpprest/rawptrstream.h>               // Async streams backed by raw pointer to memory
#include <cpprest/producerconsumerstream.h>     // Async streams for producer consumer scenarios
*/

using namespace utility;                    // Common utilities like string conversions
using namespace web;                        // Common features like URIs.
using namespace web::http;                  // Common HTTP functionality
using namespace web::http::client;          // HTTP client features
using namespace concurrency::streams;       // Asynchronous streams

/*
  Other important namespaces not used in this tutorial 
  in Casablanca include:

using namespace web::http::experimental::listener;          // HTTP server
using namespace web::experimental::web_sockets::client;     // WebSockets client
using namespace web::json;                                  // JSON library
*/
```

* Making an Http Request and Saving the Results


## `openapi-generator`
```text
$ openapi-generator generate -i petstore.yaml -g cpp-restbed-server -o server
```

## Reference:
* [Getting Started Tutorial](https://github.com/microsoft/cpprestsdk/wiki/Getting-Started-Tutorial)
  * [Programming with Tasks](https://github.com/microsoft/cpprestsdk/wiki/Programming-with-Tasks)
  * [cpprestsdk Wiki](https://github.com/microsoft/cpprestsdk/wiki)
* [Config Options for cpp-restsdk](https://openapi-generator.tech/docs/generators/cpp-restsdk)
* [OpenAPI Specification](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.1.md#infoObject)
* [OpenAPI Map](https://openapi-map.apihandyman.io/?version=3.0)
* [Swagger Editor](https://editor.swagger.io/)