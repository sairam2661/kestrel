"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> memref<*xf32>, sym_name = "builtin_unranked"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "bufferization.to_buffer"(%arg0) : (tensor<*xf32>) -> memref<*xf32>
    "func.return"(%0) : (memref<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

