extern "C" {
    #include <lua.h>
    #include <lualib.h>
    #include <lauxlib.h>
}
#include <iostream>

using namespace std;

int main (void) {
    //intialize state
    lua_State *L = luaL_newstate();
    //load libraries
    luaL_openlibs(L);
    //load execute file
    luaL_dofile(L,"simple.lua");

    //get varible
    lua_getglobal(L,"x");
    lua_getglobal(L,"y");
    if(lua_isnil(L,-1)){                    //check if is nil
        cout << "Number nil" << "\n";
    }else{                                  //if not get value to an int and print
        int i = lua_tonumber(L,-1);

        cout << i << "\n";
    }
    //pop n elements
    lua_pop(L,1);
    //clear stack
    lua_settop(L,0);
    //checkStack space
    cout << lua_checkstack(L,-1);
}