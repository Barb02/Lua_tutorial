extern "C" {
    #include <lua.h>
    #include <lualib.h>
    #include <lauxlib.h>
}
#include <iostream>

using namespace std;

int cBar(lua_State* L){

    const string s = lua_tostring(L,-1);

    int len = s.length();

    lua_pushnumber(L,len);

    return 1;
}

int main(int argc, char const *argv[])
{
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    //push func to stack 
    lua_pushcfunction(L,cBar);
    //set top of the stack to global var "bar" pops from stack
    lua_setglobal(L,"bar");

    luaL_dofile(L,"cFunct.lua");
    //get func
    lua_getglobal(L,"foo");
    lua_pushstring(L,"Hello World");
    //call funct bar
    lua_pcall(L,1,1,0);
    int i = lua_tonumber(L,-1);
    cout << i << "\n";

    lua_getglobal(L,"x");
    int x = lua_tonumber(L,-1);
    cout << x << "\n";

}