"builtin.module"() ({
  "func.func"() <{function_type = (tensor<42xf32>) -> memref<42xf32>, sym_name = "builtin_ranked"}> ({
  ^bb0(%arg0: tensor<42xf32>):
    %0 = "bufferization.to_buffer"(%arg0) : (tensor<42xf32>) -> memref<42xf32>
    "func.return"(%0) : (memref<42xf32>) -> ()
  }) : () -> ()
}) : () -> ()

