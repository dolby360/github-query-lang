
#pragma once
#include <stdint.h>
#include <stddef.h>

enum node_type_e {
    USER,
    ISSUE
};

typedef struct node{
    enum node_type_e type;
    char** value;
}node;

void add_node(enum node_type_e type, char** values, uint8_t num_of_values);