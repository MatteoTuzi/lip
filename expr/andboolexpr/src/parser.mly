%{
    open Ast
%}

%token TRUE
%token FALSE
%token LPAREN
%token RPAREN
%token IF
%token THEN
%token ELSE
%token NOT
%token AND
%token OR
%token EOF

%left AND 
%left OR
%right NOT

%start <andBoolExpr> prog


%%


prog:
  | e = expr; EOF { e }
;

expr:
  | TRUE { True }
  | FALSE { False }
  | NOT; e=expr; { Not e }
  | AND; e1=expr; e2=expr; { And(e1, e2) }
  | OR; e1 = expr; e2 = expr; { Or(e1, e2) }
  | IF; e1=expr; THEN; e2=expr; ELSE; e3=expr; { If(e1, e2, e3) }
  | LPAREN; e=expr; RPAREN {e}
;
