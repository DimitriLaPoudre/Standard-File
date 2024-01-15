##
## EPITECH PROJECT, 2023
## Standard File
## File description:
## Makefile
##

NAME = test

SRC = src/main.c \

OBJ = $(SRC:.c=.o)

CFLAGS = -I./include

all: $(NAME)

$(NAME): $(OBJ)
	make -C lib/my/
	make -C lib/list/
	make -C lib/garbage/
	gcc -o $(NAME) $(OBJ) $(CFLAGS) -L./lib/my/ -lmy -L./lib/list/ -llist \
	-L./lib/garbage/ -lgarbage -g3

clean:
	make -C lib/my/ clean
	make -C lib/list/ clean
	make -C lib/garbage/ clean
	rm -rf $(OBJ)

fclean: clean
	make -C lib/my/ fclean
	make -C lib/list/ fclean
	make -C lib/garbage/ fclean
	rm -rf $(NAME)

re: fclean all
