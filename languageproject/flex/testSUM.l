%{
    
%}

%%

[1-9]+[0-9]*|0 {printf("NUM ");}
[+\-*/] {printf("SIGN ");}
"(" {printf("LPA ");}
")" {printf("RPA ");}
.

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}

/*
%{
    

%}

%%

[1-9]+[0-9]*  		printf("NUM ");
"+"|"-"|"*"|"/"  	printf("SIGN ");
"("					printf("LPA ");
")"					printf("RPA ");

%%
main(int argc, char **argv)
{
    
  yylex();
  yywrap();
}
int yywrap()
{
    
	return 1;
}
*/