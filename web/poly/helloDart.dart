import 'package:polymer/polymer.dart';
import "dart:html";
import "dart:convert" show JSON;

@CustomTag('custom-hello-dart')
class HelloDart extends PolymerElement {
  @observable String text = "GOODBYE";
  @observable String language = "JS";
  
  HelloDart.created() : super.created();
  
  void toggle(){
      var url; 
      if(language == "Dart"){
        url = "http://127.0.0.1:8079/helloDart?language=JS";
      }else{
        url = "http://127.0.0.1:8079/helloDart?language=Dart";  
      }
      var request = HttpRequest.getString(url).then(afterServerResponse);
    }
    
  afterServerResponse(responseText){
    Map m = JSON.decode(responseText);
    text = m["text"];
    language = m["language"];
  }
}