/*
** EPITECH PROJECT, 2023
** my_listlen.c
** File description:
** my_listlen.c
*/

#include "../../include/linked_list.h"
#include <stdlib.h>

int list_len(llist *begin)
{
    int i = 0;
    llist *tmp;

    tmp = begin;
    for (; tmp != NULL; i++)
        tmp = tmp->next;
    return i;
}
