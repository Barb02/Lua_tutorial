extern "C" {
    #include <lua.h>
    #include <lualib.h>
    #include <lauxlib.h>
}
#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
    lua_State *L = luaL_newstate();
    //load libraries
    luaL_openlibs(L);
    //load execute file
    luaL_dofile(L,"table.lua");

    //get varible (table)       //stack
    lua_getglobal(L,"table");   //table
    //push index to stack
    lua_pushstring(L,"C");      //table,C
    //get value from table
    lua_gettable(L,-2);         //table,compiled
    

    const string s = lua_tostring(L,-1);

    cout << s << "\n";
}