# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apaget <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/07 17:20:54 by apaget            #+#    #+#              #
#*   Updated: 2016/01/28 11:41:00 by                  ###   ########.fr       *#
#                                                                              #
# **************************************************************************** #

FILESRC = get_tetrimos.c	\
		  init.c			\
		  main.c			\
		  solve_tetrimos.c	\
		  vector.c			\
		  init_map.c		\
		  gestion_map.c		\
		  gestion_map2.c	\
		  display_fct.c		\
		  verify_tetrinos.c

SRCOBJ = $(FILESRC:.c=.o)

CC = gcc
FLAGS = -Wall -Wextra -Werror
RM = rm

NAME = fillit
all : $(NAME)

$(NAME) : $(SRCOBJ)
	$(CC) $(SRCOBJ) -o $(NAME)
	@echo "done !"

%.o : %.c
	$(CC) $(FLAGS) -o $@ -c $^ $(FLAGS)

clean:
	$(RM) $(SRCOBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all
