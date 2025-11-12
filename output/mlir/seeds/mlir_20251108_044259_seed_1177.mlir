"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complexOperations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
    ^bb1(%true: i1):
      %4 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) {
    } : (i1) -> (i32) 
    %5 = "arith.cmpi"(%1, %3, "sgt") : (i32, i32) -> i1
    %6 = "scf.if"(%5) ({
    ^bb2(%true: i1):
      %7 = "arith.muli"(%arg1, %3) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) {
    } : (i1) -> (i32) 
    "func.return"(%3, %6) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()