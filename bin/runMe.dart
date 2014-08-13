library sampleServerGui;

import "dart:io";
import 'dart:convert';

import 'package:route/url_pattern.dart';
import 'package:routes/server.dart';

part '../routes.dart';
part 'myFunctions.dart';

String pathToChromium = 'C:\\dart\\chromium\\Chrome.exe';
String projectRootPath = 'C:\\Projects\\Dart\\dart-server-gui-sample-code';
String pathToIndexHtml = '${projectRootPath}\\web\\app\\index.html';

/* A simple web server that responds to **ALL** GET and **POST** requests via routes
 * Browse to it using http://localhost:8080  
 * Provides CORS headers, so can be accessed from any other page
 */

final HOST = "127.0.0.1"; // eg: localhost
final PORT = 8079;

void main() {
  HttpServer.bind(HOST, PORT).then((server) {
    var router = initRouter(server, serverRoutes);
    print("Listening for GET and POST on http://$HOST:$PORT");
    /*Process.run(pathToChromium, [pathToIndexHtml]).then((ProcessResult pr){
     print(pr.exitCode); print(pr.stdout); print("#####################"); print(pr.stderr); });*/
  }, onError: printError);
}

void printError(error) => print(error);
