"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, memref<4xf32>) -> (), sym_name = "store_to_buffer"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: memref<4xf32>):
    "iree_codegen.store_to_buffer"(%arg0, %arg1) : (tensor<4xf32>, memref<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

