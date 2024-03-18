/*
** EPITECH PROJECT, 2023
** my_getnbr
** File description:
** my_getbr
*/

#include "../../include/my.h"

long long getnbr(char *str)
{
    long long nb = 0;
    int neg = 1;
    int i = 0;

    if (str[0] == '-' || str[0] == '+') {
        i++;
        neg = (str[0] == '-') ? -1 : 1;
    }
    for (; str[i] >= '0' && str[i] <= '9'; i++)
        nb = nb * 10 + str[i] - '0';
    return nb * neg;
}
