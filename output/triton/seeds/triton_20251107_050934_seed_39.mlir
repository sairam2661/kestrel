"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "matrix_add_and_reduce"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "tt.addptr"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "tt.expand_dims"(%0, 0) : (tensor<16x16xi32>) -> tensor<1x16x16xi32>
    %2 = "scf.if"(%1) <{predicate = true}> ({
    ^bb1(%arg2: tensor<1x16x16xi32>):
      %3 = "tt.reduce"(%arg2) <{operation = "add"}>: (tensor<1x16x16xi32>) -> tensor<16x16xi32>
      "scf.yield"(%3) : (tensor<16x16xi32>) -> tensor<16x16xi32>
    }) : (tensor<1x16x16xi32>) -> tensor<16x16xi32>
    "tt.return"(%2) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()