/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlasne <jlasne@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/30 01:17:51 by jlasne            #+#    #+#             */
/*   Updated: 2016/08/30 01:34:15 by jlasne           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <string.h>
#include "libft.h"

char	*ft_strjoin(char const *s)
{
	char	*ret;
	int		size_s;
	int		i;
	int		j;
	int		index_end;

	j = 0;
	i = 0;
	size_s = ft_strlen(s);
	if (!(ret = (char *) malloc((size_s + 1) * sizeof (char))))
			return (NULL);
	while (s[i] != ' ' || s[i] != '\t' || s[i] != '\n')
		i++;

}
