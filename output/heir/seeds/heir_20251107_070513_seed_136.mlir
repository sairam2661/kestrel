"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "scf.if"(%0) ({
  ^bb1(%arg2: i1):
      %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) {
  } : (i1) -> (i32)
    %4 = "scf.for"(%arg0, %arg1) ({
  ^bb2(%arg3: i32, %arg4: i32):
      %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32, i32) -> (i32)
    %6 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()