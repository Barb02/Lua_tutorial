# Installing

For the purpose of this tutorial, you can either choose to run the examples and exercises on an online interpreter or to install Lua on your machine.

Here are some online interpreters you can choose from:

https://onecompiler.com/lua/

https://www.tutorialspoint.com/execute_lua_online.php

To install Lua, you can either the pre-compiled binaries available [here](https://luabinaries.sourceforge.net/) or, if you're using a linux distributuon, use the commands below to build from source:

```
curl -R -O http://www.lua.org/ftp/lua-5.4.6.tar.gz
tar zxf lua-5.4.6.tar.gz
cd lua-5.4.6
make all test
make linux-readline
sudo make install
```

## References

https://www.newthinktank.com/2015/06/learn-lua-one-video/
https://www.youtube.com/watch?v=jUuqBZwwkQw
https://www.lua.org/manual/5.4/
https://www.tutorialspoint.com/generic-for-in-lua-programming
https://github.com/pohka/Lua-Beginners-Guide
https://riptutorial.com/lua/example/20536/the--gmatch--function
https://www.gammon.com.au/scripts/doc.php?lua=table.concat