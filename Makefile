NAME = libft.a
CC	= cc
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_clean.c ft_convert.c ft_isx.c ft_lst.c ft_memory.c ft_printf.c ft_putfd.c ft_split.c ft_str.c get_next_line.c

OBJ_DIR = objs/

OBJ = $(addprefix $(OBJ_DIR), $(SRCS:.c=.o))

BLUE = \033[1;34m
YELLOW = \033[1;33m
GREEN = \033[1;32m
RESET = \033[0m

####################

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo "$(GREEN) __    _____ _____ _____ _____ "
	@echo "|  |  |     | __  |   __|_   _|"
	@echo "|  |__ >   <| __ <|   __| | |  "
	@echo "|_____|_____|_____|__|    |_|  "
	@echo "$(BLUE)                   by penpalac$(RESET)"

$(OBJ_DIR)%.o: %.c | $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

clean:
	@rm -rf $(OBJ_DIR)
	@echo "$(YELLOW)[Cleaned up objects]$(RESET)"

fclean: clean
	@rm -f $(NAME)
	@echo "$(YELLOW)[$(NAME) removed]$(RESET)"

re: fclean all

.PHONY: all clean fclean re
