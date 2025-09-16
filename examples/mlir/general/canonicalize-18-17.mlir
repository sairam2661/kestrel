"builtin.module"() ({
  "func.func"() <{function_type = (index, index, tensor<?x?xf32>) -> f32, sym_name = "load_from_buffer_cast"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: tensor<?x?xf32>):
    %0 = "bufferization.to_buffer"(%arg2) : (tensor<?x?xf32>) -> memref<?x?xf32>
    %1 = "memref.load"(%0, %arg0, %arg1) : (memref<?x?xf32>, index, index) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

