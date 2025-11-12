"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "complex_unranked_add"}> ({
    ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
      %0 = "tosa.const"() <{values = dense<10> : tensor<2xi32>}> : () -> tensor<2xi32>
      %1 = "arith.addi"(%arg0, %1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %2 = "arith.addi"(%1, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "func.return"(%2) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "nested_region_example"}> ({
    ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
      "scf.if"(%arg0) <{sym_name = "if_region"}> ({
        ^bb1(%arg2: tensor<2xi32>):
          %3 = "arith.addi"(%arg2, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
          "scf.yield"(%3) : (tensor<2xi32>) -> ()
      }) {
        "scf.yield" = {} 	} : (tensor<2xi32>) -> (tensor<2xi32>)
  }) : () -> ()
}) : () -> ()