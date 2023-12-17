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