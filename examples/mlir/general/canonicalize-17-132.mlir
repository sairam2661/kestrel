"builtin.module"() ({
  "func.func"() <{function_type = (index) -> tensor<4x?xf32>, sym_name = "splat_dynamic_no_fold"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "tensor.splat"(%0, %arg0) : (f32, index) -> tensor<4x?xf32>
    "func.return"(%1) : (tensor<4x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

