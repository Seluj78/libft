/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_unistd.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlasne <jlasne@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/21 16:08:00 by jlasne            #+#    #+#             */
/*   Updated: 2017/10/19 05:44:50 by jlasne           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_UNISTD_H
# define FT_UNISTD_H

# define GETOPT_ERR_OPT 1
# define GETOPT_ERR_ARG 2

int		ft_getopt(int ac, char *const av[], const char *optstring);
void	ft_getopt_reset(void);

#endif