"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, i32) -> tensor<2xi32>
    %4 = "tensor.insert"(%3, %1, 1) : (tensor<2xi32>, i32, i64) -> tensor<2xi32>
    %5 = "arith.subi"(%4, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %6 = "arith.select"(%5, %arg1, %3) : (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%6) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()