# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: clorcery <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/19 12:51:28 by clorcery          #+#    #+#              #
#    Updated: 2022/04/25 16:51:19 by clorcery         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_printf.c ft_printf_utils.c ft_printf_utils_bis.c

OBJS = ${SRCS:.c=.o}

NAME = libftprintf.a

INC = ft_printf.h

DINC = ./libft/

LIBFT = libft.a

RM = rm -f

CC = gcc

FLAGS = -Wall -Werror -Wextra -g

CLIB = ar

FLIB = rcs

.c.o:
		${CC} ${FLAGS} -c -I.${INC} $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			make -C ${DINC} ${LIBFT}  
			cp ${DINC}${LIBFT} .
			mv ${LIBFT} ${NAME}
		 	${CLIB} ${FLIB} ${NAME} ${OBJS}  				

all:	 ${NAME}

clean:
		make -C ${DINC} clean
		${RM} ${OBJS}
		
fclean:	clean
		make -C ${DINC} fclean
		${RM} ${NAME}

re: 	fclean all

.PHONY: all clean fclean re
