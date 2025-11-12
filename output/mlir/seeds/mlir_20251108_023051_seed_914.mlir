"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<4xi32>) -> vector<4xi32>, sym_name = "vector_arith_ops"}> ({
  ^bb0(%arg0: i32, %arg1: vector<4xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = dense<3> : vector<4xi32>}> : () -> vector<4xi32>
    %3 = "arith.addi"(%arg1, %2) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%3) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()