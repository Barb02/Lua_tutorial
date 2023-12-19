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
    luaL_openlibs(L);

    luaL_dofile(L,"func.lua");
    //get da funcao                                                         //stack
    lua_getglobal(L,"foo");                                                 //foo
    //push args to stack
    lua_pushnumber(L,3);                                                    //foo,3
    lua_pushnumber(L,6);                                                    //foo,3,6

    //chamar funcao (L,number of args,number args receive,error funct)
    lua_pcall(L,2,1,0);                                                     //result
    int res = lua_tointeger(L,-1);

    cout << res << endl;


    return 0;
}
