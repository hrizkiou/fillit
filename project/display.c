/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   display.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hrizkiou <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/21 01:16:25 by hrizkiou          #+#    #+#             */
/*   Updated: 2019/07/23 15:26:12 by mmatrouf         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fillit.h"

void	ft_display(t_file t)
{
	int i;

	i = -1;
	while (++i < t.size)
	{
		ft_putendl(t.map[i]);
	}
}
