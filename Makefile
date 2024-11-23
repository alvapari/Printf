# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alvapari <alvapari@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/21 13:04:48 by alvapari          #+#    #+#              #
#    Updated: 2023/11/21 13:05:03 by alvapari         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FILES = *.c
OBJECTS = *.o
FLAGS = -Wall -Wextra -Werror

all :$(NAME)

$(NAME): $(OBJECTS)
	@ar rsc $(NAME) $(OBJECTS)

$(OBJECTS) :$(FILES)
	@cc $(FLAGS) -c $(FILES)

clean:
	@rm -f $(OBJECTS)

fclean:
	@rm -f $(OBJECTS) $(NAME)

re :fclean all

.PHONY: all clean fclean re