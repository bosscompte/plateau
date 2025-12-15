NAME	=	plateau

SRC		=	src/main.cpp

OBJ		=	$(SRC:.c=.o)

SFML	=	-lsfml-graphics -lsfml-system -lsfml-window

all: $(OBJ)
	g++ -o $(NAME) $(OBJ) $(SFML)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
