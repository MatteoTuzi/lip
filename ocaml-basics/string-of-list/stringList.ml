let rec convertList = function
    [] -> "" 
  | h::l -> ";" ^ string_of_int h ^ (convertList l);;


let string_of_list = function
    [] -> "[]"
  | h::l -> "[" ^ string_of_int h ^ convertList l ^ "]"
