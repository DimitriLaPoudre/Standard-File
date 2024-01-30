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
        lib/my/my_mini_printf.c \
        lib/my/my_strlen.c \
        lib/my/my_getnbr.c \
        lib/my/my_power.c \
        lib/my/my_power_float.c \
        lib/my/my_putnbr.c \
        lib/my/my_putnbr_base.c \
        lib/my/my_stradd.c \
        lib/my/my_strdup.c \
        lib/my/my_strcat.c \
        lib/my/my_strcpy.c \
        lib/my/my_strcmp.c \

OBJ = $(SRC:.c=.o)

CFLAGS = -I./include -l csfml-graphics -l csfml-system -l csfml-audio

all: $(NAME)

$(NAME): $(OBJ)
	make -C lib/my/
	make -C lib/list/
	make -C lib/garbage/
	gcc -o $(NAME) $(OBJ) $(CFLAGS) -L./lib/my/ -lmy -L./lib/list/ -llist \
	-L./lib/garbage/ -lgarbage -g3

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
	make -C lib/my/ clean
	make -C lib/list/ clean
	make -C lib/garbage/ clean
	rm -rf $(OBJ)
	rm -rf *.gcda
	rm -rf *.gcno

fclean: clean
	make -C lib/my/ fclean
	make -C lib/list/ fclean
	make -C lib/garbage/ fclean
	rm -rf $(NAME)
	rm -rf $(NAME_T)

re: fclean all
