"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>, sym_name = "xor_with_nested_regions"}> ({
    ^bb0(%arg0: tensor<2x3xi1>, %arg1: tensor<2x3xi1>):
      %0 = "arith.xor"(%arg0, %arg1) : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
      "test.nested_region"(%0) ({
        "test.another_nested_region"() ({
          "test.consumer"(%0) : (tensor<2x3xi1>) -> ()
        }) : () -> ()
      }) : (tensor<2x3xi1>) -> ()
      "func.return"(%0) : (tensor<2x3xi1>) -> ()
    }) : () -> ()
}) : () -> ()