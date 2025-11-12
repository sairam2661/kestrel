"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1024x512xf32>, tensor<1x1024x512xf32>) -> tensor<1x1024x512xf32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<1x1024x512xf32>, %arg1: tensor<1x1024x512xf32>):
    %0 = "tensor.empty"() : () -> tensor<1x1024x512xf32>
    %1 = "linalg.map"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: f32, %arg3: f32):
      %2 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
      %3 = "arith.addf"(%2, %arg2) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
      "linalg.yield"(%3) : (f32) -> ()
    }) : (tensor<1x1024x512xf32>, tensor<1x1024x512xf32>, tensor<1x1024x512xf32>) -> tensor<1x1024x512xf32>
    %4 = "scf.for"(%arg1, %0) <{bounds = [0, 1024], step = 1}> ({
    ^bb0(%iv: index, %iv2: tensor<1x1024x512xf32>):
      %5 = "tensor.extract"(%iv2, %iv, 0, 0) : (tensor<1x1024x512xf32>, index, index, index) -> f32
      %6 = "arith.addf"(%5, %5) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
      %7 = "tensor.insert"(%6, %iv2, %iv, 0, 0) : (f32, tensor<1x1024x512xf32>, index, index, index) -> tensor<1x1024x512xf32>
      "scf.yield"(%iv, %7) : (index, tensor<1x1024x512xf32>) -> ()
    }) {init_args = []} : (tensor<1x1024x512xf32>, tensor<1x1024x512xf32>) -> tensor<1x1024x512xf32>
    "func.return"(%4) : (tensor<1x1024x512xf32>) -> ()
  }) : () -> ()
}) : () -> ()