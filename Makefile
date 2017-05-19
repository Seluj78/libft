# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlasne <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/03 12:34:13 by jlasne            #+#    #+#              #
#    Updated: 2017/05/19 09:55:00 by jlasne           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -g3 -Wall -Wextra -Werror

SRC = ft_bzero.c\
	  ft_memset.c\
	  ft_memcpy.c\
	  ft_memccpy.c\
	  ft_memmove.c\
	  ft_memchr.c\
	  ft_memcmp.c\
	  ft_strlen.c\
	  ft_strwlen.c\
	  ft_strdup.c\
	  ft_strcpy.c\
	  ft_strncpy.c\
	  ft_strcat.c\
	  ft_strncat.c\
	  ft_strlcat.c\
	  ft_strchr.c\
	  ft_strrchr.c\
	  ft_strstr.c\
	  ft_strnstr.c\
	  ft_strcmp.c\
	  ft_strncmp.c\
	  ft_atoi.c\
	  ft_isalpha.c\
	  ft_isdigit.c\
	  ft_isalnum.c\
	  ft_isascii.c\
	  ft_isprint.c\
	  ft_toupper.c\
	  ft_tolower.c\
	  ft_putnbr_fd.c\
	  ft_putnbr.c\
	  ft_putchar.c\
	  ft_putchar_fd.c\
	  ft_putstr.c\
	  ft_putstr_fd.c\
	  ft_putendl.c\
	  ft_putendl_fd.c\
	  ft_strjoin.c\
	  ft_strclr.c\
	  ft_memalloc.c\
	  ft_strnew.c\
	  ft_strdel.c\
	  ft_memdel.c\
	  ft_striter.c\
	  ft_striteri.c\
	  ft_strmap.c\
	  ft_strmapi.c\
	  ft_strequ.c\
	  ft_strnequ.c\
	  ft_strtrim.c\
	  ft_strsplit.c\
	  ft_itoa.c\
	  ft_strsub.c\
	  ft_power.c\
	  ft_split_whitespaces.c\
	  ft_cat.c\
	  ft_atoi_base.c\
	  ft_atoi_nbase.c\
	  ft_itoa_base.c\
	  ft_itoa_base_l.c\
	  ft_itoa_base_ll.c\
	  ft_nblen.c\
	  ft_nblen_l.c\
	  ft_nblen_ll.c\
	  ft_putnbr_l.c\
	  ft_putnbr_ll.c\
	  ft_strisdigit.c\
	  ft_binlen.c\
	  ft_charwlen.c\
	  ft_putnwstr.c\
	  ft_putnwchar.c\
	  ft_putwchar.c\
	  ft_putnstr.c\
	  ft_itoa_base_uint.c\
	  get_next_line.c\
	  ft_str_to_tab_sep.c\
	  ft_str_to_tab_sep_helper.c\
	  ft_free_array.c\
	  ft_tabdup.c\
	  ft_add_to_array.c\
	  ft_arraylen.c\
	  ft_remfrom_array.c\
	  ft_strjoin_sep.c\
	  ft_print_array.c

SRC_PATH = ./srcs

SRC_POS = $(addprefix $(SRC_PATH),$(SRC))

OBJ = $(SRC:.c=.o)

OBJ_DIR = ./obj

INC = ./includes

FT_PRINTF = ../ft_printf/ft_printf.a

all: $(NAME)

$(NAME): $(FT_PRINTF) $(OBJ)
	@echo "\033[35mCopying ft_printf.a\033[0m"
	@cp $(FT_PRINTF) $(NAME)
	@echo "\033[35mCompiling libft.a with ft_printf.a\033[0m"
	@ar r $(NAME) $(OBJ)
	@echo "\033[35mOptimizing library\033[0m"
	@ranlib $(NAME)
	@mv *.o $(OBJ_DIR)/
	@echo "\033[35mLibft compilation complete\033[0m" "\033[32m [ok] \033[32m"

$(FT_PRINTF):
	@echo "\033[35mCompiling ft_printf.a\033[0m"
	@make -C ../ft_printf/

%.o:$(SRC_PATH)/%.c
	@gcc -c $(FLAGS) -I $(INC) $< -o $@

clean:
	@echo "\033[35mRemoving .o files\033[0m"
	@/bin/rm -f $(OBJ)
	@echo "\033[35mRemoving ft_printf/*.o files\033[0m"
	@make fclean -C ../ft_printf/

fclean: clean
	@echo "\033[35mRemoving .a files\033[0m"
	@$(RM) $(NAME) $(FT_PRINTF)

re: fclean all
