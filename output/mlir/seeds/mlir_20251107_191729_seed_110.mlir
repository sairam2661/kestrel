"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>), sym_name = "complex_fft_and_cmp"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0:2 = "tosa.fft2d"(%arg0, %arg1) <{inverse = false}> : (tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>)
    %1 = "arith.addf"(%0#0, %0#1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    %2 = "arith.cmpf"(%1, %arg0, "oeq") : (tensor<?x?xf32>, tensor<?x?xf32>, i32) -> tensor<?xi1>
    "func.return"(%2) : (tensor<?xi1>) -> ()
  }) : () -> ()
}) : () -> ()