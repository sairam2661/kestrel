"builtin.module"() ({
  "func.func"() <{function_type = (i8, vector<2xi32>) -> (i8, vector<2xi32>), sym_name = "unusual_types_and_vectors"}> ({
  ^bb0(%arg0: i8, %arg1: vector<2xi32>):
    %0 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = dense<10> : vector<2xi32>}> : () -> vector<2xi32>
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowAttrs}> : (i8, i8) -> i8
    %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflowAttrs}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "func.return"(%2, %3) : (i8, vector<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()