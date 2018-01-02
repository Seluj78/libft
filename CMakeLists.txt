cmake_minimum_required(VERSION 3.0)
project(libjlasne)

set(CMAKE_C_STANDARD 11)
set (CMAKE_C_FLAGS "-Wall -Werror -Wextra")

# libft
set(SOURCE_FILES
        srcs/core/ft_add_to_array.c
        srcs/core/ft_arraylen.c
        srcs/core/ft_atoi.c
        srcs/core/ft_atoi_base.c
        srcs/core/ft_atoi_nbase.c
        srcs/core/ft_binlen.c
        srcs/core/ft_bzero.c
        srcs/core/ft_cat.c
        srcs/core/ft_charwlen.c
        srcs/core/ft_free_array.c
        srcs/core/ft_isalnum.c
        srcs/core/ft_isalpha.c
        srcs/core/ft_isascii.c
        srcs/core/ft_isdigit.c
        srcs/core/ft_isprint.c
        srcs/core/ft_itoa.c
        srcs/core/ft_itoa_base.c
        srcs/core/ft_itoa_base_l.c
        srcs/core/ft_itoa_base_ll.c
        srcs/core/ft_itoa_base_uint.c
        srcs/core/ft_memalloc.c
        srcs/core/ft_memccpy.c
        srcs/core/ft_memchr.c
        srcs/core/ft_memcmp.c
        srcs/core/ft_memcpy.c
        srcs/core/ft_memdel.c
        srcs/core/ft_memmove.c
        srcs/core/ft_memset.c
        srcs/core/ft_nblen.c
        srcs/core/ft_nblen_l.c
        srcs/core/ft_nblen_ll.c
        srcs/core/ft_power.c
        srcs/core/ft_print_array.c
        srcs/core/ft_putchar.c
        srcs/core/ft_putchar_fd.c
        srcs/core/ft_putendl.c
        srcs/core/ft_putendl_fd.c
        srcs/core/ft_putnbr.c
        srcs/core/ft_putnbr_fd.c
        srcs/core/ft_putnbr_l.c
        srcs/core/ft_putnbr_ll.c
        srcs/core/ft_putnstr.c
        srcs/core/ft_putnwchar.c
        srcs/core/ft_putnwstr.c
        srcs/core/ft_putstr.c
        srcs/core/ft_putstr_fd.c
        srcs/core/ft_putwchar.c
        srcs/core/ft_remfrom_array.c
        srcs/core/ft_split_whitespaces.c
        srcs/core/ft_str_to_tab_sep.c
        srcs/core/ft_str_to_tab_sep_helper.c
        srcs/core/ft_strcat.c
        srcs/core/ft_strchr.c
        srcs/core/ft_strclr.c
        srcs/core/ft_strcmp.c
        srcs/core/ft_strcpy.c
        srcs/core/ft_strdel.c
        srcs/core/ft_strdup.c
        srcs/core/ft_strequ.c
        srcs/core/ft_strisdigit.c
        srcs/core/ft_striter.c
        srcs/core/ft_striteri.c
        srcs/core/ft_strjoin.c
        srcs/core/ft_strjoin_sep.c
        srcs/core/ft_strlcat.c
        srcs/core/ft_strlen.c
        srcs/core/ft_strmap.c
        srcs/core/ft_strmapi.c
        srcs/core/ft_strncat.c
        srcs/core/ft_strncmp.c
        srcs/core/ft_strncpy.c
        srcs/core/ft_strnequ.c
        srcs/core/ft_strnew.c
        srcs/core/ft_strnstr.c
        srcs/core/ft_strrchr.c
        srcs/core/ft_strsplit.c
        srcs/core/ft_strstr.c
        srcs/core/ft_strsub.c
        srcs/core/ft_strtrim.c
        srcs/core/ft_strwlen.c
        srcs/core/ft_tabdup.c
        srcs/core/ft_tolower.c
        srcs/core/ft_toupper.c

        # printf (TODO: other printfs)
        srcs/ft_printf/checks/check_flags.c
        srcs/ft_printf/checks/check_precision_max.c
        srcs/ft_printf/checks/check_spaces.c
        srcs/ft_printf/checks/check_width.c
        srcs/ft_printf/color/color.c
        srcs/ft_printf/color/color2.c
        srcs/ft_printf/color/color3.c
        srcs/ft_printf/convert/convert_c.c
        srcs/ft_printf/convert/convert_d.c
        srcs/ft_printf/convert/convert_jzlh.c
        srcs/ft_printf/convert/convert_o.c
        srcs/ft_printf/convert/convert_p.c
        srcs/ft_printf/convert/convert_percent.c
        srcs/ft_printf/convert/convert_r.c
        srcs/ft_printf/convert/convert_s.c
        srcs/ft_printf/convert/convert_u.c
        srcs/ft_printf/convert/convert_x.c
        srcs/ft_printf/core/ft_printf.c
        srcs/ft_printf/core/parser.c
        srcs/ft_printf/core/utils.c
        srcs/ft_printf/print/print_d.c
        srcs/ft_printf/print/print_o.c
        srcs/ft_printf/print/print_u.c
        srcs/ft_printf/print/print_x.c
        srcs/ft_printf/print/print_xx.c

        # TODO: logger


        # TODO: tcaps

        )


include_directories(includes)

add_library(jlasne ${SOURCE_FILES})

#add_subdirectory(tests)