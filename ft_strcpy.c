/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlasne <jlasne@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/28 22:16:53 by jlasne            #+#    #+#             */
/*   Updated: 2016/09/03 01:04:23 by jlasne           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

char	*ft_strcpy(char *str)
{
	char *cpy;
	int i;

	i = ft_strlen(str);

	cpy = (char*)malloc((i + 1) * sizeof(char));

	i = 0;
	while (str[i] != '\0')
	}
		cpy[i] = str[i];
		i++;
	}
	cpy[i] = '\0';
	return (cpy);
}
