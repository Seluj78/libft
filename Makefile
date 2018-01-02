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

NAME			=	libjlasne.a

# Libft sources
SRC_SUBDIR		+= srcs/core/
SRCS			+= ft_add_to_array.c ft_arraylen.c ft_atoi.c ft_atoi_base.c \
ft_atoi_nbase.c ft_binlen.c ft_bzero.c ft_cat.c ft_charwlen.c ft_free_array.c \
ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
ft_itoa_base.c ft_itoa_base_l.c ft_itoa_base_ll.c ft_itoa_base_uint.c \
ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c \
ft_memmove.c ft_memset.c ft_nblen.c ft_nblen_l.c ft_nblen_ll.c ft_power.c \
ft_print_array.c ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c \
ft_putnbr.c ft_putnbr_fd.c ft_putnbr_l.c ft_putnbr_ll.c ft_putnstr.c \
ft_putnwchar.c ft_putnwstr.c ft_putstr.c ft_putstr_fd.c ft_putwchar.c \
ft_remfrom_array.c ft_split_whitespaces.c ft_str_to_tab_sep.c \
ft_str_to_tab_sep_helper.c ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c \
ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_strisdigit.c ft_striter.c \
ft_striteri.c ft_strjoin.c ft_strjoin_sep.c ft_strlcat.c ft_strlen.c \
ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c \
ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c ft_strsub.c \
ft_strtrim.c ft_strwlen.c ft_tabdup.c ft_tolower.c ft_toupper.c

# ft_printf sources
SRC_SUBDIR		+= srcs/ft_printf/checks
SRCS			+= srcs/ft_printf/checks/check_flags.c srcs/ft_printf/checks/check_precision_max.c srcs/ft_printf/checks/check_spaces.c srcs/ft_printf/checks/check_width.c

SRC_SUBDIR		+= srcs/ft_printf/color
SRCS			+= color.c color2.c color3.c

SRC_SUBDIR		+= srcs/ft_printf/convert
SRCS			+= convert_c.c convert_d.c convert_jzlh.c convert_o.c convert_p.c convert_percent.c convert_r.c convert_s.c convert_u.c convert_x.c

SRC_SUBDIR		+= srcs/ft_printf/core
SRCS			+= ft_printf.c parser.c utils.c

SRC_SUBDIR		+= srcs/ft_printf/print
SRCS			+= print_d.c print_o.c print_u.c print_x.c print_xx.c

# Logger sources

# Tcaps sources

###############################################################################
#																			  #
#									CONFIG									  #
#																			  #
###############################################################################

#  Compiler
CC				= clang
CFLAGS			= -Wall -Wextra

ifneq ($(NOERR),yes)
    CFLAGS		+= -Werror
endif

ifeq ($(DEV),yes)
    CFLAGS		+= -g
endif

ifeq ($(SAN),yes)
    CFLAGS		+= -fsanitize=address -fno-omit-frame-pointer -fno-optimize-sibling-calls
endif

#The Directories, Source, Includes, Objects and Libraries
INC				= -I includes
INC_TESTS		+= -I tests/includes

vpath  %c $(SRC_SUBDIR)
vpath  %c $(SRC_TESTS_SUBDIR)

#Objects
OBJS_DIR		= objs
OBJS			= $(SRCS:%.c=$(OBJS_DIR)/%.o)

#OBJS_TESTS_DIR	= objs_tests
OBJS_TESTS		= $(SRCS_TESTS:%.c=$(OBJS_DIR)/%.o)

# Dependencies
DEPS_DIR		= .deps
DEPS			= $(SRCS:%.c=$(DEPS_DIR)/%.d)
DEPS			+= $(SRCS_TESTS:%.c=$(DEPS_DIR)/%.d)
BUILD_DIR		= $(OBJS_DIR) $(DEPS_DIR) $(OBJS_TESTS_DIR)

## libft
INC				+= -I includes/core/includes

## ft_printf
INC				+= -I includes/ft_printf/includes

## Lib criterion
LIBCRITERION_ROOT	+= ../Criterion
LIBCRITERION_DIR	+= $(LIBCRITERION_ROOT)/build
INC_TESTS			+= -I $(LIBCRITERION_ROOT)/include

#Utils
RM				= rm -rf
MKDIR			= mkdir -p

DOXYGEN = $(shell doxygen -v dot 2> /dev/null)

###############################################################################
#																			  #
#								DOT NOT EDIT BELOW							  #
#																			  #
###############################################################################
 #########
## RULES ##
 #########

all: $(DEPS_DIR) $(NAME)

$(NAME): $(OBJS)
	ar rc $@ $(OBJS)
	ranlib $@

$(OBJS_DIR)/%.o: %.c | $(OBJS_DIR) $(DEPS_DIR) Makefile
	$(CC) $(CFLAGS) $(INC) $(INC_TESTS) -o $@ -c $<
	$(CC) $(INC) $(INC_TESTS) -MM $< -MT $@ -MP -MF $(DEPS_DIR)/$*.d

tests: $(OBJS_TESTS) $(NAME)
	$(CC) $(CFLAGS) -o test $(OBJS_TESTS) -L ./ -lcbc -L $(LIBCRITERION_DIR) -lcriterion $(INC) $(INC_TESTS)
	echo "done"

# Add dependency as prerequisites
ifneq ($(MAKECMDGOALS),clean)
 ifneq ($(MAKECMDGOALS),fclean)
  ifneq ($(MAKECMDGOALS),doc)
   -include $(DEPS)
  endif
 endif
endif

$(DEPS_DIR)/%.d: ;
.PRECIOUS: $(DEPS_DIR)/%.d

$(BUILD_DIR):
	@$(MKDIR) -p $@

re: fclean all

clean:
ifeq ($(shell [ -e $(OBJS_DIR) ] && echo 1 || echo 0),1)
	$(RM) $(OBJS_DIR)
endif
ifeq ($(shell [ -e $(DEPS_DIR) ] && echo 1 || echo 0),1)
	$(RM) $(DEPS_DIR)
endif

fclean: clean
ifeq ($(shell [ -e $(NAME) ] && echo 1 || echo 0),1)
	$(RM) $(NAME)
endif
ifeq ($(shell [ -e test ] && echo 1 || echo 0),1)
	$(RM) $(NAME)
endif
doc:
ifndef DOXYGEN
	@echo "Please install doxygen first (brew install doxygen)."
else
	@doxygen Doxyfile 1> /dev/null
	@printf "[\033[35m--------------------------\033[0m]\n"
	@printf "[\033[36m------ Documentation -----\033[0m]\n"
	@printf "[\033[36m------   generated   -----\033[0m]\n"
	@printf "[\033[35m--------------------------\033[0m]\n"
endif

.PHONY: re clean fclean all doc tests
.SUFFIXES: .c .h .o .d