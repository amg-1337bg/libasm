/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bamghoug <bamghoug@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/28 11:32:07 by bamghoug          #+#    #+#             */
/*   Updated: 2020/12/07 10:52:22 by bamghoug         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main()
{
    char *s = "brahim 1997 hello from the other side";
    int i = ft_strlen(s);
    int b = strlen(s);
    printf ("ft_strlen = %d\nstrlen = %d\n",i, b);
    
    char *dst1;
    char *dst2;
    char *src1 = "salam akhi kolchi mzn labas 3liik";
    dst1 = malloc(100);
    dst2 = malloc(100);
    dst1 = ft_strcpy(dst1,src1);
    dst2 = strcpy(dst2,src1);
    printf("ft_strcpy = %s\nstrcpy = %s\n", dst1,dst2);
    free(dst2);
    free(dst1);
    
    char *s1 = "hrllo world";
    char *s2 = "hello world";
    printf("ft_strcmp = %d\nstrcmp = %d\n", ft_strcmp(s1, s2), strcmp(s1, s2));
    

    int w1 = 0;
    int w2 = 0;
    char *str = "hello  weohfewoubg[au hgr ughra[gharbnjanfeoauhw hao'ehfoa'bfdjsbn eohweuhfu eh0[0ew";
    printf ("\n-----Ft_write-----\n");
    w1 = ft_write(1, str, strlen(str));
    printf ("\n-------write------\n");
    w2 = write(1, str, strlen(str));
    printf ("\n-----RESULT-----\n");
    printf ("ft_write = %d ERRNO = %d\n",w1, errno);
    printf ("write = %d\n", w2);
    
    char *buf1;
    char *buf2;
    buf1= malloc(100);
    buf2 = malloc(100);
    printf ("\n-----Ft_read-----\n");
    w1 = ft_read(10, buf1, 100);
    printf ("\n-------read------\n");
    w2 = read(10, buf2, 100);
    printf ("\n-----RESULT-----\n");
    printf ("ft_read = %d ERRNO = %d\n",w1, errno);
    printf ("read = %d\n", w2);
    

    char *dup1;
    char *dup2;
    char *sr = "hello";
    dup1 = ft_strdup(sr);
    dup2 = strdup(sr);
    printf("\n");
    printf("ft_strdup = %s\nstrdup = %s\n", dup1, dup2);
    free(dup1);
    free(dup2);
    
    return 0;
}