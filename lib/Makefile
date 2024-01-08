##
## EPITECH PROJECT, 2023
## Untitled (Workspace)
## File description:
## Makefile
##

GLOBAL = libglobal.a

all: $(NAME)

$(NAME):
	make -C my/
	make -C list/
	make -C garbage/
	ar rc $(NAME) libmy.a liblist.a libgarbage.a

clean:
	make -C my/ clean
	make -C list/ clean
	make -C garbage/ clean

fclean:
	make -C my/ fclean
	make -C list/ fclean
	make -C garbage/ fclean
	rm -rf $(NAME)

re: fclean all
