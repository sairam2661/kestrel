"builtin.module"() (
  {
    "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "dynamic_tensor_add"}> (
      {
        ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
          %0 = "tosa.const"() <{values = dense<1.000000e+00> : tensor<?x?xf32>}> : () -> tensor<?x?xf32>
          %1 = "arith.addf"(%arg0, %arg1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
          %2 = "arith.addf"(%1, %0) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
          "func.return"(%2) : (tensor<?x?xf32>) -> ()
      }
    ) : () -> ()
  }
) : () -> ()