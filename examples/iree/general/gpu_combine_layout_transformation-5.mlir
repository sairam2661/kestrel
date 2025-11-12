"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x16xf32>, memref<8x16xf32>) -> (), sym_name = "fold_collapse_shape_op"}> ({
  ^bb0(%arg0: tensor<2x4x16xf32>, %arg1: memref<8x16xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2]]}> : (tensor<2x4x16xf32>) -> tensor<8x16xf32>
    "iree_codegen.store_to_buffer"(%0, %arg1) : (tensor<8x16xf32>, memref<8x16xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

