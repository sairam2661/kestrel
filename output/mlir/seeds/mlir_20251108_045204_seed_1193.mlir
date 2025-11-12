"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<4xi1>) -> (i32, vector<4xi1>), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: i32, %arg1: vector<4xi1>):
      %0 = "tosa.const"() <{value = 16 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "tosa.const"() <{value = [true, false, true, false]}> : () -> vector<4xi1>
      %3 = "arith.addi"(%1, %2) : (i32, vector<4xi1>) -> vector<4xi1>
      "func.return"(%1, %3) : (i32, vector<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()