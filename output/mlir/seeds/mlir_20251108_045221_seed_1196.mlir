"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "tosa_ops_experiment"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c1_i32 = "tosa.const"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "tosa.const"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "tosa.const"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "tosa.const"() <{value = 4 : i32}> : () -> i32
    %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg1, %c2_i32) : (i32, i32) -> i32
    %2 = "arith.muli"(%0, %c3_i32) : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %c4_i32) : (i32, i32) -> i32
    "func.return"(%3, %1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()