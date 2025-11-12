"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, i32) -> (tensor<3xi32>, i32), sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[10, 20, 30]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, i32) -> tensor<3xi32>
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.subi"(%arg1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %3, "sgt") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %arg1, %3) : (i1, i32, i32) -> i32
    "func.return"(%2, %6) : (tensor<3xi32>, i32) -> ()
  }) : () -> ()
}) : () -> ()