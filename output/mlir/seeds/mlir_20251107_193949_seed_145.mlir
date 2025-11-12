"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "complex_transform"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "transform.named_sequence"() <{sequence_name = "complex_sequence"}> ({
      "transform.structured.match"(%arg0) <{pattern = #transform_pattern, value = ""}> ({
        ^bb1(%match0: tensor<2x3xi32>):
          "transform.structured.match"(%arg1) <{pattern = #transform_pattern, value = ""}> ({
            ^bb2(%match1: tensor<2x3xi32>):
              %1 = "arith.addi"(%match0, %match1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
              "transform.yield"(%1) : (tensor<2x3xi32>) -> ()
          }) : (tensor<2x3xi32>) -> tensor<2x3xi32>
      }) : (tensor<2x3xi32>) -> tensor<2x3xi32>
    }) : () -> tensor<2x3xi32>
    "func.return"(%0) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()