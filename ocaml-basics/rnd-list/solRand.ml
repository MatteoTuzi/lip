let rec rnd_list n b = match n with
    0 -> []
  | _ -> if b = 0 then failwith "Estremo destro non può essere minore o uguale a 0"
      else Random.int (b+1) :: (rnd_list (n-1) b);;