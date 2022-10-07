let minmax f a b = 
  if f (a+ 0) <= f b then 
    let min = f a in (min,f b)
  else let min = f b in (min, f a);;

let g n = n*2;