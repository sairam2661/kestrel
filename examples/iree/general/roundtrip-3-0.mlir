"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xf32>) -> tensor<4xf32>, sym_name = "load_from_buffer"}> ({
  ^bb0(%arg0: memref<4xf32>):
    %0 = "iree_codegen.load_from_buffer"(%arg0) : (memref<4xf32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

