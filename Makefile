NAME=libftprintf.a
SRC=ft_printf.c print.c format.c utils.c
HEADERDIR=includes
CC=cc
RM=/bin/rm -f
CFLAGS=-Wall -Wextra -Werror
_OBJ=$(SRC:.c=.o)
OBJ=$(addprefix srcs/,$(_OBJ))
AR=ar rcs

$(NAME): $(OBJ)
	$(AR) $@ $^

srcs/%.o: srcs/%.c
	$(CC) $(CFLAGS) -c -o $@ $< -I $(HEADERDIR)

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
