type andBoolExpr =
    True
  | False
  | Not of andBoolExpr
  | And of andBoolExpr * andBoolExpr
  | Or of andBoolExpr * andBoolExpr
  | If of andBoolExpr * andBoolExpr * andBoolExpr
