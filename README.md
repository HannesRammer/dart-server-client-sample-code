TEMPLATE FOR
**Server side GUI's **
and 
**File Access in Client**
use this basic polymer server gui template.

since Dart Editor currently doesnt provide a combined sample code for new projects

making use of using 
[routes](https://github.com/HannesRammer/routes)
and
[params](https://github.com/HannesRammer/params)

------------------------------------
###CHANGES YOU NEED TO DO BEFOR RUNNING
------------------------------------

change 

**pathToChromium** to your local absolute chromium path 

**projectRootPath**  to your local absolute project root path

------------------------------------
###HOW TO RUN
----------

1. run "bin/runMe.dart" 

2. run "web/app/index.html"
 
------------------------------------

my example consists of

**simpleServer**
- bin/runMe.dart

**personal functions** in a seperate file to keep the simpleServer file clean
- bin/myFunctions.dart

**basic view**
- web/app/index.dart
- web/app/index.html

**simple poly item**
- web/poly/helloDart.css
- web/poly/helloDart.dart
- web/poly/helloDart.html

Its not perfect but should help you get startet! ;)

-------
##Enjoy
-------

####TODO
update code so its enougth to start one file eg via (pubserve.dart)
at http://stackoverflow.com/questions/24658226/how-to-run-a-polymer-app-via-run-in-dartium-from-console

####PS: 
I filed a feature [request](https://code.google.com/p/dart/issues/detail?id=19581)  

------------------------------------
changelog:
----------

 13.8.2014 -updated to work with routes >=0.1.0 <0.2.0
 12.8.2014 -updated to work with polymer >=0.12.0 <0.13.0