"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xi32>) -> tensor<12xi64>, sym_name = "reorder_with_type_change"}> ({
  ^bb0(%arg0: tensor<3x4xi32>):
    %0 = "stablehlo.reshape"(%arg0) : (tensor<3x4xi32>) -> tensor<12xi32>
    %1 = "stablehlo.convert"(%0) : (tensor<12xi32>) -> tensor<12xi64>
    "func.return"(%1) : (tensor<12xi64>) -> ()
  }) : () -> ()
}) : () -> ()

