#use "instrs.ml";;

let instructions = [|
  Store ( IIndex 2, VarSE ( IIndex 0));
  Store ( IIndex 3, ConstSE 0);
  Store ( IIndex 1, BinOpSE ( BCompar BClt , IIndex 2, IIndex 3));
  Branch ( IIndex 1, AbsJump 5, AbsJump 4);
  Goto ( AbsJump 9);
  Store ( IIndex 1, ConstSE 0);
  Store ( IIndex 2, VarSE ( IIndex 0));
  Store ( IIndex 0, BinOpSE ( BArith BAsub , IIndex 1, IIndex 2));
  Goto ( AbsJump 9);
  Store ( IIndex 2, VarSE ( IIndex 0));
  Store ( IIndex 3, ConstSE 1);
  Store ( IIndex 1, BinOpSE ( BCompar BCgt , IIndex 2, IIndex 3));
  Branch ( IIndex 1, AbsJump 13, AbsJump 17);
  Store ( IIndex 1, VarSE ( IIndex 0)); Store ( IIndex 2, ConstSE 2);
  Store ( IIndex 0, BinOpSE ( BArith BAsub , IIndex 1, IIndex 2));
  Goto ( AbsJump 9); Store ( IIndex 2, VarSE ( IIndex 0));
  Store ( IIndex 3, ConstSE 0);
  Store ( IIndex 1, BinOpSE ( BCompar BCeq , IIndex 2, IIndex 3));
  Exit ( IIndex 1)
|];;

(*exec_instr instructions [|IntV 0; IntV 0; IntV 0; IntV 0; IntV 0; IntV 0; IntV 0|] 2;;*)

run_code instructions;;