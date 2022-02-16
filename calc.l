
%%
[0-9]+                      return 'INTEGER';
"+"                         return 'PLUS';
"-"                         return 'MINUS';
"*"                         return 'TIMES';
"/"                         return 'DIV';
"("                         return 'LPAREN';
")"                         return 'RPAREN';
\s+                         /* skip whitespaces */
"."                         throw 'Illegal character';
<<EOF>>                     return 'EOF';
