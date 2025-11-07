"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x512xf32>) -> tensor<1x512xf32>, sym_name = "unary"}> ({
  ^bb0(%arg0: tensor<1x512xf32>):
    %0 = "tensor.empty"() : () -> tensor<1x512xf32>
    %1 = "linalg.map"(%arg0, %0) ({
    ^bb0(%arg1: f32):
      %2 = "math.absf"(%arg1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%2) : (f32) -> ()
    }) : (tensor<1x512xf32>, tensor<1x512xf32>) -> tensor<1x512xf32>
    "func.return"(%1) : (tensor<1x512xf32>) -> ()
  }) : () -> ()
}) : () -> ()

