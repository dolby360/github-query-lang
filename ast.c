#pragma once
#include "ast.h"

node* g_user_node = NULL;
node* g_lable_node = NULL;

void add_user_node(){
    
}

void add_node(enum node_type_e type, char** values, uint8_t num_of_values){
    switch (type)
    {
    case USER:

        break;
    case ISSUE:
        break;
    default:
        break;
    }
}

