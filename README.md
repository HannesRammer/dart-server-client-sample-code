If you want to have
"Server side GUI's with Dart" 
and 
"File Access in Client"

use this basic polymer server gui template I wrote.

------------------------------------
CHANGES YOU NEED TO DO BEFOR RUNNING
------------------------------------

change 

'pathToChromium' to your local absolute chromium path 
'pathToIndexHtml'  to your local absolute web/app/index.html path

------------------------------------
HOW TO RUN
----------

currently you have to run first "bin/runMe.dart" 
and second "web/app/index.html"
 
------------------------------------

my example consists of

simpleServer 
- bin/runMe.dart

personal functions in a seperate file to keep the simpleServer file clean
- bin/myFunctions.dart

basic view
-web/app/index.dart
-web/app/index.html

simple poly item
-web/poly/helloDart.css
-web/poly/helloDart.dart
-web/poly/helloDart.html



Enjoy

I filed a feature (request)[https://code.google.com/p/dart/issues/detail?id=19581] 
since Dart Editor currently doesnt provide a combined sample code for new projects

Its not perfect but should help you get startet! ;)


current issues with this example
1.the server is still running after chromium client has been closed. (if startet via process)
2.wont start client debugger (if started via process)

todo update code so its enougth to start one file eg via (pubserve.dart)
at http://stackoverflow.com/questions/24658226/how-to-run-a-polymer-app-via-run-in-dartium-from-console

------------------------------------
changelog:
----------

 updated to work with polymer >=0.12.0 <0.13.0