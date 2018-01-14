# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlasne <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/03 12:34:13 by jlasne            #+#    #+#              #
#    Updated: 2018/01/02 15:28:02 by jlasne           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libjlasne.a

# Libft Core
SRCS += core/ft_add_to_array.c \
		core/ft_arraylen.c \
		core/ft_atoi.c \
		core/ft_atoi_base.c \
		core/ft_atoi_nbase.c \
		core/ft_binlen.c \
		core/ft_bzero.c \
		core/ft_cat.c \
		core/ft_charwlen.c \
		core/ft_free_array.c \
		core/ft_isalnum.c \
		core/ft_isalpha.c \
		core/ft_isascii.c \
		core/ft_isdigit.c \
		core/ft_isprint.c \
		core/ft_itoa.c \
		core/ft_itoa_base.c \
		core/ft_itoa_base_l.c \
		core/ft_itoa_base_ll.c \
		core/ft_itoa_base_uint.c \
		core/ft_memalloc.c \
		core/ft_memccpy.c \
		core/ft_memchr.c \
		core/ft_memcmp.c \
		core/ft_memcpy.c \
		core/ft_memdel.c \
		core/ft_memmove.c \
		core/ft_memset.c \
		core/ft_nblen.c \
		core/ft_nblen_l.c \
		core/ft_nblen_ll.c \
		core/ft_power.c \
		core/ft_print_array.c \
		core/ft_putchar.c \
		core/ft_putchar_fd.c \
		core/ft_putendl.c \
		core/ft_putendl_fd.c \
		core/ft_putnbr.c \
		core/ft_putnbr_fd.c \
		core/ft_putnbr_l.c \
		core/ft_putnbr_ll.c \
		core/ft_putnstr.c \
		core/ft_putnwchar.c \
		core/ft_putnwstr.c \
		core/ft_putstr.c \
		core/ft_putstr_fd.c \
		core/ft_putwchar.c \
		core/ft_remfrom_array.c \
		core/ft_split_whitespaces.c \
		core/ft_str_to_tab_sep.c \
		core/ft_str_to_tab_sep_helper.c \
		core/ft_strcat.c \
		core/ft_strchr.c \
		core/ft_strclr.c \
		core/ft_strcmp.c \
		core/ft_strcpy.c \
		core/ft_strdel.c \
		core/ft_strdup.c \
		core/ft_strequ.c \
		core/ft_strisdigit.c \
		core/ft_striter.c \
		core/ft_striteri.c \
		core/ft_strjoin.c \
		core/ft_strjoin_sep.c \
		core/ft_strlcat.c \
		core/ft_strlen.c \
		core/ft_strmap.c \
		core/ft_strmapi.c \
		core/ft_strncat.c \
		core/ft_strncmp.c \
		core/ft_strncpy.c \
		core/ft_strnequ.c \
		core/ft_strnew.c \
		core/ft_strnstr.c \
		core/ft_strrchr.c \
		core/ft_strsplit.c \
		core/ft_strstr.c \
		core/ft_strsub.c \
		core/ft_strtrim.c \
		core/ft_strwlen.c \
		core/ft_tabdup.c \
		core/ft_tolower.c \
		core/ft_toupper.c \


#Printf
# Printf Checks
SRCS +=     ft_printf/checks/check_flags.c \
		ft_printf/checks/check_precision_max.c \
		ft_printf/checks/check_spaces.c \
		ft_printf/checks/check_width.c \

#Printf color
SRCS +=     ft_printf/color/color.c \
		ft_printf/color/color2.c \
		ft_printf/color/color3.c \

#Printf Convert
SRCS +=     ft_printf/convert/convert_c.c \
		ft_printf/convert/convert_d.c \
		ft_printf/convert/convert_jzlh.c \
		ft_printf/convert/convert_o.c \
		ft_printf/convert/convert_p.c \
		ft_printf/convert/convert_percent.c \
		ft_printf/convert/convert_r.c \
		ft_printf/convert/convert_s.c \
		ft_printf/convert/convert_u.c \
		ft_printf/convert/convert_x.c \

#Printf Core
SRCS +=     ft_printf/core/ft_printf.c \
		ft_printf/core/parser.c \
		ft_printf/core/utils.c \

#Printf Print
SRCS +=     ft_printf/print/print_d.c \
		ft_printf/print/print_o.c \
		ft_printf/print/print_u.c \
		ft_printf/print/print_x.c \
		ft_printf/print/print_xx.c \


SRC_PATH = ./srcs

SRC_POS = $(addprefix $(SRC_PATH),$(SRCS))

OBJ = $(SRCS:.c=.o)

OBJ_DIR = ./obj

INC = includes
INC += includes/core/includes
INC += includes/ft_printf/

all: $(NAME)

$(NAME): $(OBJ)
	ar r $(NAME) $(OBJ)
	ranlib $(NAME)
	if [ -d "./obj" ]; then echo "\033[35mDirectory\033[34m obj\033[35m already exists\033[0m"; else mkdir obj; fi
	mv *.o $(OBJ_DIR)/
	echo "\033[35mLibft compilation complete\033[0m" "\033[32m [ok] \033[32m"

%.o:$(SRC_PATH)/%.c
	gcc -c $(FLAGS) -I $(INC) $< -o $@

clean:
	echo "\033[35mRemoving .o files\033[0m"
	/bin/rm -rf obj/$(OBJ)

fclean: clean
	echo "\033[35mRemoving .a files\033[0m"
	/bin/rm -rf $(NAME)

re: fclean all