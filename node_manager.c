#pragma once
#include "node_manager.h"

node* g_user_node = NULL;
node* g_lable_node = NULL;

void add_user_node(){
    if (g_user_node){
        return;
    }
    g_user_node = (node*)malloc(sizeof(node));
    
}

void add_node(enum node_type_e type, char** values, uint8_t num_of_values){
    switch (type)
    {
    case USER:
            add_user_node();
        break;
    case ISSUE:
        break;
    default:
        break;
    }
}

