##
## EPITECH PROJECT, 2023
## Standard File
## File description:
## Makefile
##

NAME = test

NAME_T = unit_tests

SRC = src/main.c \

SRC_T = lib/my/my_putchar.c \
        lib/my/my_putstr.c \
        lib/my/my_puterror.c \
        lib/my/my_miniprintf.c \
        lib/my/my_strlen.c \
        lib/my/my_getnbr.c \
        lib/my/my_nbr_to_str.c \
        lib/my/my_power.c \
        lib/my/my_power_float.c \
        lib/my/my_putnbr.c \
        lib/my/my_putfloat.c \
        lib/my/my_putnbr_base.c \
        lib/my/my_stradd.c \
        lib/my/my_strdup.c \
        lib/my/my_strcat.c \
        lib/my/my_strcat_na.c \
        lib/my/my_strcpy.c \
        lib/my/my_strcmp.c \
        lib/my/my_strncmp.c \
        lib/my/my_str_isnum.c \
        lib/my/my_str_to_word_array.c \

OBJ = $(SRC:.c=.o)

CFLAGS = -I./include -l csfml-graphics -l csfml-system -l csfml-audio

all: $(NAME)

$(NAME): $(OBJ)
	make -C lib/
	gcc -o $(NAME) $(OBJ) $(CFLAGS)

$(NAME_T): fclean
	gcc -o $(NAME_T) $(SRC_T) tests/test_lib.c --coverage \
      -lcriterion

tests_run: $(NAME_T)
	./unit_tests

check_tests: tests_run
	gcovr
	gcovr --branches
	make fclean

clean:
	make -C lib/ clean
	rm -rf $(OBJ)
	rm -rf *.gcda
	rm -rf *.gcno

fclean: clean
	make -C lib/ fclean
	rm -rf $(NAME)
	rm -rf $(NAME_T)

re: fclean all
