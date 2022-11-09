# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpiastow <jpiastow@student.42heilbronn.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/27 11:20:45 by jpiastow          #+#    #+#              #
#    Updated: 2022/11/08 12:49:29 by jpiastow         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

#SRCS = 

OBJS = $(SRCS:.c=.o)

#BONUS = 

BONUS_OBJS = $(BONUS:.c=.o)

CC = cc
CFLAGS = -Wall -Werror -Wextra

RM = rm -rf

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $@ $^

$(OBJS): libft.h
	@$(CC) $(CFLAGS) -c $(SRCS)

clean: 
	@$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	@$(RM) $(NAME)

re: fclean
	@$(MAKE) all

bonus: $(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY: all clean fclean re bonus