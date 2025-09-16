"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<1xf32>, memref<10x10xi32>, tensor<*xf32>) -> (), sym_name = "succeededSameOperandShape"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<1xf32>, %arg2: memref<10x10xi32>, %arg3: tensor<*xf32>):
    "test.same_operand_shape"(%arg1, %arg1) : (tensor<1xf32>, tensor<1xf32>) -> ()
    "test.same_operand_shape"(%arg0, %arg0) : (tensor<10x10xf32>, tensor<10x10xf32>) -> ()
    "test.same_operand_shape"(%arg1, %arg3) : (tensor<1xf32>, tensor<*xf32>) -> ()
    "test.same_operand_shape"(%arg0, %arg2) : (tensor<10x10xf32>, memref<10x10xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

