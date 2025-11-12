"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "mix_tensors_and_arith"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "arith.constant"() <{value = dense<[3, 4]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %2 = "tensor.insert"(%0, %arg1, %0) : (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %3 = "tensor.insert"(%1, %2, %1) : (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %4 = "arith.mulf"(%3, %3) <{overflowFlags = #arith_overflow_mode }>: (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%4) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()