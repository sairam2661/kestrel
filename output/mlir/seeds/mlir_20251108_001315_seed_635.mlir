"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "compute"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %2 = "scf.if"(%1) ({
    ^bb1:
      %3 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> i32
    }) {
    } : (i32) -> (i32)
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()