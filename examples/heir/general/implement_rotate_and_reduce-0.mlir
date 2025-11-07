"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16x16xi32>) -> tensor<16xi32>, sym_name = "test_halevi_shoup_reduction"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "tensor_ext.rotate_and_reduce"(%arg0, %arg1) <{period = 1 : index, steps = 16 : index}> : (tensor<16xi32>, tensor<16x16xi32>) -> tensor<16xi32>
    "func.return"(%0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()

