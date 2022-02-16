%start root

%ebnf

%left PLUS MINUS
%left TIMES DIV

%%

root
    : e EOF { return $1; }
    ;

e
    : INTEGER
        { $$ = parseInt(yytext); }
    | e PLUS e
        { $$ = $1 + $3; }
    | e MINUS e
        { $$ = $1 - $3; }
    | MINUS e %prec UMINUS
        { $$ = -$2; }
    | e TIMES e
        { $$ = $1 * $3; }
    | e DIV e
        { $$ = $1 / $3; }
    | LPAREN e RPAREN
        { $$ = $2; }
    ;
