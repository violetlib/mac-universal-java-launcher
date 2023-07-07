cc -I$JAVA_HOME/include -I$JAVA_HOME/include/darwin -lc++ -oout/launcher-x86 -rpath '@executable_path/../Frameworks' -target x86_64-apple-macos10.10 src/*.cpp src/*.c

cc -I$JAVA_HOME/include -I$JAVA_HOME/include/darwin -lc++ -oout/launcher-arm -rpath '@executable_path/../Frameworks' -target arm64-apple-macos11 src/*.cpp src/*.c

/usr/bin/lipo out/launcher-x86 out/launcher-arm -create -output out/launcher
