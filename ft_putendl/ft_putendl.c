/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlasne <jlasne@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/27 13:43:20 by jlasne            #+#    #+#             */
/*   Updated: 2016/08/27 13:46:41 by jlasne           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_putstr(char const *s);
void	ft_putchar(char c);

void	ft_putendl(char const *s)
{
	ft_putstr(s);
	ft_putchar('\n');
}
