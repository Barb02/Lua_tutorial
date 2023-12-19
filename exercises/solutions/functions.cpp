extern "C" {
    #include <lua.h>
    #include <lualib.h>
    #include <lauxlib.h>
}
#include <iostream>

using namespace std;

int stringLength(lua_State* L){

    const string s = lua_tostring(L,-1);

    int len = s.length();

    lua_pushnumber(L,len);

    return 1;
}

int main(int argc, char const *argv[])
{
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    lua_pushcfunction(L,stringLength);
    lua_setglobal(L,"stringLength");
    luaL_dofile(L,"functions.lua");

    lua_getglobal(L,"funct");
    lua_pushstring(L,"Hello World");
    lua_pushstring(L,"Lua is cool");
    lua_pcall(L,2,1,0);
    int i = lua_tonumber(L,-1);
    cout << i << "\n";

}