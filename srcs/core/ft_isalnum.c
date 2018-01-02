/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlasne <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/03 14:26:45 by jlasne            #+#    #+#             */
/*   Updated: 2016/11/03 14:30:27 by jlasne           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "core/core.h"

int		ft_isalnum(int c)
{
	if ((c >= '0' && c <= '9') ||
			(c >= 'A' && c <= 'Z') ||
			(c >= 'a' && c <= 'z'))
		return (_SUCCESS_);
	return (_ERROR_);
}