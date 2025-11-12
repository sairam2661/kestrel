"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xi1>, sym_name = "compare_and_reduce"}> ({
    ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x10xf32>):
      %0 = "arith.cmpf"(%arg0, %arg1) {kind = "OEQ"} : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xi1>
      %1 = "tosa.reduce_any"(%0) <{axis = 0 : i32}> : (tensor<10x10xi1>) -> tensor<1x10xi1>
      %2 = "arith.cmpf"(%arg0, %arg1) {kind = "OLT"} : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xi1>
      %3 = "tosa.reduce_any"(%2) <{axis = 0 : i32}> : (tensor<10x10xi1>) -> tensor<1x10xi1>
      %4 = "arith.cmpi"(%1, %3) {kind = "eq"} : (tensor<1x10xi1>, tensor<1x10xi1>) -> tensor<1x10xi1>
      "func.return"(%4) : (tensor<1x10xi1>) -> ()
  }) : () -> ()
}) : () -> ()