"builtin.module"() ({
  "func.func"() <{function_type = (i64, vector<8xi32>) -> (i64, vector<8xi32>), sym_name = "transform_test"}> ({
  ^bb0(%arg0: i64, %arg1: vector<8xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i64, i64) -> i64
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.extsi"(%1) : (i32) -> i64
    %3 = "arith.addi"(%0, %2) : (i64, i64) -> i64
    %4 = "vector.shuffle"(%arg1, %arg1) <{perm = dense<0> : vector<8xi32>}> : (vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "func.return"(%3, %4) : (i64, vector<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()