"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "xor_reduce"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "tt.reduce"(%0) <{operation = #tt_plus}>({^bb1(%acc: tensor<16xi32>, %val: tensor<16xi32>):
        %2 = "arith.xori"(%acc, %val) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%2) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%1) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()