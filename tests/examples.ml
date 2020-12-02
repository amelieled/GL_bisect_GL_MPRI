(* Grobner basis computations for K[X]-module *)
 (* Imports and abbreviations *)

open NC_Gasbi

let test1 =mpoly_muls [[{coeff = Int 1; vars = [1]; length = 1; size = (2, 2)};
    {coeff = Int (-1); vars = [-1]; length = 0; size = (-1, -1)};
    {coeff = Int 1; vars = [-2]; length = 0; size = (-1, -1)}];
   [{coeff = Int 1; vars = [1]; length = 1; size = (2, 2)};
    {coeff = Int (-1); vars = [-1]; length = 0; size = (-1, -1)};
    {coeff = Int 1; vars = [-2]; length = 0; size = (-1, -1)}]];;

let m1 = {coeff=Num.Int 1; vars=[27]; size=(2,2); length=1};;
let m2 = {coeff=Num.Int 1; vars=[27;78]; size=(2,4); length=2};;
let m3 = {coeff=Num.Int 1; vars=[27;27;78]; size=(2,4); length=3};;
let m4 = {coeff=Num.Int 1; vars=[27;27]; size=(2,2); length=2};;
let m5 = {coeff=Num.Int 1; vars=[78]; size=(2,4); length=1};;
let p1 = mpoly_add [m1] [m4];;
let p2 = mpoly_add (mpoly_neg [m4;m1]) [m1];;
let p3 = mpoly_mul p1 p2;;
mpoly_mul [m1] [m2;m1];;
