/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: clorcery <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/20 13:42:08 by clorcery          #+#    #+#             */
/*   Updated: 2022/05/17 18:02:59 by clorcery         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>
#include <unistd.h>

int main(void)
{

 //   int i = 13;
//	unsigned int	u = -78945;
//  char    c = 'e';
//  char    *s = "  hello";
  unsigned int    X = -14897;
//  unsigned int    x = 92;
//	void	*p;
//	p = &i; 
    	//int res;

	ft_printf("%X", X);
	printf("\n");
	printf("%X", X);
    //ft_printf("ma fct : %d\n", res);


/*
//  res = ft_putnbr_base_count(i, "01");
//  write(1, "\n", 1); 
//	res = ft_putnbr_base_count(X, "0123456789ABCDEF");
//  write(1, "\n", 1); 
    res = ft_putnbr_count(i);//, "0123456789");
    write(1, "\n", 1); 
    printf("%d", res);*/
}
