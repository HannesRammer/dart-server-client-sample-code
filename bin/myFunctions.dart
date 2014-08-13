part of sampleServerGui;

helloDart(Map params, HttpResponse res){
  Map map = {"language":params["language"]};
  if(params["language"] == "Dart"){
    map["text"]="Hello";
  }else{
    map["text"]="GOODBYE";
  }
  print(map.toString());
  res.write(JSON.encode(map));
  res.close();
}

