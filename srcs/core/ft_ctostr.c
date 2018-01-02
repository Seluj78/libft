//
// Created by Jules LASNE on 1/2/18.
//

#include <core/core.h>

char	*ft_ctostr(char c, int nb)
{
	char *s;

	s = ft_strnew((size_t)nb);
	ft_memset(s, c, (size_t)nb);
	return (s);
}