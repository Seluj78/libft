/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlasne <jlasne@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/30 01:05:58 by jlasne            #+#    #+#             */
/*   Updated: 2016/09/03 01:04:48 by jlasne           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"
#include <string.h>

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*ret;
	int		size_s1;
	int		size_s2;
	int		j;

	j = 0;
	size_s1 = ft_strlen(s1);
	size_s2 = ft_strlen(s2);
	if (!(ret = char *) malloc((size_s1 + size_s2 + 1) sizeof (char)))
			return (NULL);
	while (j < size_s1)
	{
		ret[j] = s1[j];
		j++;
	}
	j = 0;
	while (j < size_s2)
	{
		ret[size_s1] = s2[j];
		j++;
		size_s1++;
	}
	ret[size_s1] = '\0';
	return (ret);
}
