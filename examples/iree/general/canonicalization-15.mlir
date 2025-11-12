"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<16xi32>, sym_name = "merge_consecutive_reshapes"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "stablehlo.reshape"(%arg0) : (tensor<4x4xi32>) -> tensor<2x8xi32>
    %1 = "stablehlo.reshape"(%0) : (tensor<2x8xi32>) -> tensor<16xi32>
    "func.return"(%1) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()

