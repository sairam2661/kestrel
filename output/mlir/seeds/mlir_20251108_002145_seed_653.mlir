"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<4xi8>) -> (i32, vector<4xi8>), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i32, %arg1: vector<4xi8>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = dense<1234> : vector<4xi8>}> : () -> vector<4xi8>
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "func.return"(%2, %3) : (i32, vector<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()