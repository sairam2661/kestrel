"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xi32>) -> tensor<2x4xi32>, sym_name = "tensor_rotation_test"}> ({
  ^bb0(%arg0: tensor<2x4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0, %0) <{direction = "left", amount = 2}> : (tensor<2x4xi32>, index, index) -> tensor<2x4xi32>
    "func.return"(%1) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()