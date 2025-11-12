"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x4xf32>) -> tensor<4x?xf32>, sym_name = "load_from_buffer_mixed_static_dynamic"}> ({
  ^bb0(%arg0: memref<?x4xf32>):
    %0 = "iree_codegen.load_from_buffer"(%arg0) : (memref<?x4xf32>) -> tensor<4x?xf32>
    "func.return"(%0) : (tensor<4x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

