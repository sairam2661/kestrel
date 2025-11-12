"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x?xf32>, memref<?x4xf32>) -> (), sym_name = "store_to_buffer_mixed_static_dynamic"}> ({
  ^bb0(%arg0: tensor<4x?xf32>, %arg1: memref<?x4xf32>):
    "iree_codegen.store_to_buffer"(%arg0, %arg1) : (tensor<4x?xf32>, memref<?x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

