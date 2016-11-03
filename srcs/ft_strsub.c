/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlasne <jlasne@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/30 00:49:24 by jlasne            #+#    #+#             */
/*   Updated: 2016/11/03 16:25:46 by jlasne           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strsub(char const *s, unsigned int start, size_t len)
{
	char				*sub;
	int					i;
	unsigned int		size_s;

	size_s = ft_strlen(s);
	i = 0;
	if (!(sub = (char*)malloc((len + 1) * sizeof(char))))
		return (NULL);
	if (len > size_s || start > size_s)
		return (NULL);
	while (len > 0)
	{
		sub[i] = s[start];
		start++;
		i++;
		len--;
	}
	sub[i] = '\0';
	return (sub);
}
