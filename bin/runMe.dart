library sampleServerGui;

import "dart:io";
import 'dart:convert';
import 'package:params/server.dart';
part 'myFunctions.dart';

String pathToChromium = 'C:\\dart\\chromium\\Chrome.exe';
String pathToIndexHtml = 'C:\\Projects\\Dart\\dart-server-gui-sample-code\\web\\app\\index.html';

/* A simple web server that responds to **ALL** GET and **POST** requests
 * Browse to it using http://localhost:8080  
 * Provides CORS headers, so can be accessed from any other page
 */

final HOST = "127.0.0.1"; // eg: localhost 
final PORT = 8079; 

void main() {
  HttpServer.bind(HOST, PORT).then((server) {
    server.listen((HttpRequest request) {
      initParams(request);
      switch (request.method) {
        case "GET": 
          handleGet(request);
          break;
        case "POST": 
          handlePost(request);
          break;
        case "OPTIONS": 
          handleOptions(request);
          break;
        default: defaultHandler(request);
      }
    }, 
    onError: printError);
    print("Listening for GET and POST on http://$HOST:$PORT");
    /*Process.run(pathToChromium, [pathToIndexHtml]).then((ProcessResult pr){
      print(pr.exitCode);
      print(pr.stdout);
      print("#####################");
      print(pr.stderr);
    });*/
    
  },
  onError: printError);
}

/**
 * Handle GET requests 
 */
void handleGet(HttpRequest req) {
  HttpResponse res = req.response;
  print("${req.method}: ${req.uri.path}");
  String path=req.uri.path;
  addCorsHeaders(res);

  if(path == "/helloDart"){
      helloDart(res);
  }
  else {
    var err = "Could not find path: $path";
    res.write(err);
    res.close();  
  }
}

void handlePost(HttpRequest req) {
  HttpResponse res = req.response;
  print("${req.method}: ${req.uri.path}");
  String path=req.uri.path;
  addCorsHeaders(res);
}

/**
 * Add Cross-site headers to enable accessing this server from pages
 * not served by this server
 * 
 * See: http://www.html5rocks.com/en/tutorials/cors/ 
 * and http://enable-cors.org/server.html
 */
void addCorsHeaders(HttpResponse res) {
  res.headers.add("Access-Control-Allow-Origin", "*, ");
  res.headers.add("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
  res.headers.add("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
}

void handleOptions(HttpRequest req) {
  HttpResponse res = req.response;
  addCorsHeaders(res);
  print("${req.method}: ${req.uri.path}");
  res.statusCode = HttpStatus.NO_CONTENT;
  res.close();
}

void defaultHandler(HttpRequest req) {
  HttpResponse res = req.response;
  addCorsHeaders(res);
  res.statusCode = HttpStatus.NOT_FOUND;
  res.write("Not found: ${req.method}, ${req.uri.path}");
  res.close();
}

void printError(error) => print(error);