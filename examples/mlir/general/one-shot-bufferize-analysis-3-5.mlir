"builtin.module"() ({
  "func.func"() <{function_type = (index, f32) -> f32, sym_name = "to_buffer_not_read_only"}> ({
  ^bb0(%arg0: index, %arg1: f32):
    %0 = "tensor.generate"() ({
    ^bb0(%arg2: index):
      "tensor.yield"(%arg1) : (f32) -> ()
    }) : () -> tensor<5xf32>
    %1 = "bufferization.to_buffer"(%0) : (tensor<5xf32>) -> memref<5xf32>
    %2 = "tensor.extract"(%0, %arg0) : (tensor<5xf32>, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

