let rec has a = function
    [] -> false
  | h::l -> if h = a then true else has a l;;

let rec dup a = function
    [] -> false
  | h::l -> if has h (l) then true else dup (l);;
