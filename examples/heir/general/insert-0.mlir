"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<2x4xi32>>) -> !secret.secret<tensor<2x4xi32>>, sym_name = "tensor_insert"}> ({
  ^bb0(%arg0: !secret.secret<tensor<2x4xi32>>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<2x4xi32>):
      %4 = "tensor.insert"(%2, %arg1, %0, %1) : (i32, tensor<2x4xi32>, index, index) -> tensor<2x4xi32>
      "secret.yield"(%4) : (tensor<2x4xi32>) -> ()
    }) : (!secret.secret<tensor<2x4xi32>>) -> !secret.secret<tensor<2x4xi32>>
    "func.return"(%3) : (!secret.secret<tensor<2x4xi32>>) -> ()
  }) : () -> ()
}) : () -> ()

