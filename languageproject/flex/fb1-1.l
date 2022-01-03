/**
 *  Information: 本例中仅使用flex以及少量手写代码(main中), 来完成字符串统计功能。
 *  Author: Summer Sue
 *  Date: 2021,10,30
 *  Function: 统计输入字符串
 *  Source from: https://zhuanlan.zhihu.com/p/120812270
 */

/* 存在问题 */
%{
    int chars = 0;
    int words = 0;
    int lines = 0;
%}

%%
[a-zA-Z]+ {
        words++;
        chars += strlen(yytext);
    }

\n  {   chars++; lines++;   }

.   { chars++; return 0; }

%%

int main(int args, char **argv)
{
    yylex();
    printf("lines=%6d words=%6d chars=%6d\n", lines, words, chars);

    return 0;
}
/* Linux系统上用-lfl选项编译, Mac的编译选项是-ll Command: flex *.l */