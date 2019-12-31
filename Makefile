# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrizkiou <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/23 08:50:18 by hrizkiou          #+#    #+#              #
#    Updated: 2019/07/24 22:41:46 by mmatrouf         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wextra -Wall -Werror
NAME = fillit
SRCS = ./project/main.c \
	   ./project/check.c \
	   ./project/map.c \
	   ./project/display.c \
	   ./project/solve.c 
OBJS = $(SRCS:.c=.o)

$(NAME):$(OBJS)
		@make -C libft
	    @$(CC) $(CFLAGS) $(OBJS) libft/libft.a -o $(NAME)

all: $(NAME)

clean:
		make clean -C libft
		rm -fv $(OBJS)

fclean: clean
		make fclean -C libft
	    rm -fv $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re

norme:
	    @norminette $(SRCS) 
		@norminette project/fillit.h
