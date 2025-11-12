"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mix_mul"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %4 = "arith.muli"(%1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()