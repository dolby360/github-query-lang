
#pragma once
#include <stdint.h>

enum node_type_e {
    USER,
    ISSUE
};

typedef struct node{
    enum node_type_e type;
    char** value;
}

void add_node(enum node_type_e type, char** values, uint8_t num_of_values);