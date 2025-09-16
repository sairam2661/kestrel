"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> tensor<?x3x?xf32>, sym_name = "tensor.generate"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "tensor.generate"(%arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %1 = "arith.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
      "tensor.yield"(%1) : (f32) -> ()
    }) : (index, index) -> tensor<?x3x?xf32>
    "func.return"(%0) : (tensor<?x3x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

