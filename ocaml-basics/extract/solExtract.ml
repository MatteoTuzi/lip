let rec findElement cont i l = match l with
    [] -> failwith "la lista è vuota"
  | h::l -> if i > cont then failwith "index out of bounds"
      else if cont = i then h else findElement (cont+1) i l;;

let rec removeElement el l = match l with
    [] -> []
  | h::l -> if h = el then l else h::removeElement el l;;

let extract i l = match l with
    []  -> failwith "La lista è vuota"
  | h::l -> let element = findElement 0 i (h::l) in element, removeElement element (h::l);;