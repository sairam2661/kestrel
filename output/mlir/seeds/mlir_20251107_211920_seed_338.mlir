"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>, sym_name = "transform_example"}> ({
  ^bb0(%arg0: tensor<2x3x4xi32>, %arg1: tensor<2x3x4xi32>):
    %0 = "transform.structured.match"() ({
      ^bb1(%match: tensor<2x3x4xi32>):
        %1 = "transform.named_sequence"() <{name = "sequence1"}> ({
          ^bb2(%seq1: tensor<2x3x4xi32>):
            %2 = "arith.addi"(%seq1, %seq1) : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
            "transform.yield"(%2) : (tensor<2x3x4xi32>) -> ()
        }) : (tensor<2x3x4xi32>) -> (tensor<2x3x4xi32>)
        "transform.yield"(%1) : (tensor<2x3x4xi32>) -> ()
      }) : (tensor<2x3x4xi32>) -> (tensor<2x3x4xi32>)
      %3 = "arith.addi"(%arg0, %0) : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
      "func.return"(%3) : (tensor<2x3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()