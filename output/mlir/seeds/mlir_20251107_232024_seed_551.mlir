"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "test_complex_nested_ops"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x10xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    %1 = "arith.cmpf"(%0, %arg0) <{predicate = "oeq"}> : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xi1>
    %2 = "tosa.const"() <{value = dense<1.0 : f32> : tensor<10x10xf32>}> : () -> tensor<10x10xf32>
    %3 = "arith.addf"(%0, %2) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    "func.return"(%3) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()