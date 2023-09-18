#!/bin/bash
mkdir -p lib
cp /usr/local/opt/csfml/lib/libcsfml-*2.5.dylib lib
cp /usr/local/opt/sfml/lib/libsfml-*2.6.dylib lib
cp /usr/local/opt/freetype/lib/libfreetype.6.dylib lib
cp /usr/local/opt/libpng/lib/libpng16.16.dylib lib
install_name_tool -change /usr/local/opt/csfml/lib/libcsfml-graphics.2.5.dylib @executable_path/lib/libcsfml-graphics.2.5.dylib main
install_name_tool -change /usr/local/opt/csfml/lib/libcsfml-window.2.5.dylib @executable_path/lib/libcsfml-window.2.5.dylib main
install_name_tool -change /usr/local/opt/csfml/lib/libcsfml-system.2.5.dylib @executable_path/lib/libcsfml-system.2.5.dylib main
#
install_name_tool -change /usr/local/opt/sfml/lib/libsfml-graphics.2.6.dylib @executable_path/lib/libsfml-graphics.2.6.dylib lib/libcsfml-graphics.2.5.dylib
install_name_tool -change /usr/local/opt/sfml/lib/libsfml-window.2.6.dylib @executable_path/lib/libsfml-window.2.6.dylib lib/libcsfml-graphics.2.5.dylib
install_name_tool -change /usr/local/opt/sfml/lib/libsfml-system.2.6.dylib @executable_path/lib/libsfml-system.2.6.dylib lib/libcsfml-graphics.2.5.dylib
#
install_name_tool -change @rpath/libsfml-window.2.6.dylib @executable_path/lib/libsfml-window.2.6.dylib lib/libsfml-graphics.2.6.dylib
install_name_tool -change @rpath/libsfml-system.2.6.dylib @executable_path/lib/libsfml-system.2.6.dylib lib/libsfml-graphics.2.6.dylib
install_name_tool -change /usr/local/opt/freetype/lib/libfreetype.6.dylib @executable_path/lib/libfreetype.6.dylib lib/libsfml-graphics.2.6.dylib
#
install_name_tool -change @rpath/libsfml-system.2.6.dylib @executable_path/lib/libsfml-system.2.6.dylib lib/libsfml-window.2.6.dylib
#
install_name_tool -change /usr/local/opt/libpng/lib/libpng16.16.dylib @executable_path/lib/libpng16.16.dylib lib/libfreetype.6.dylib


