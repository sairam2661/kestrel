"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "nested_reduce"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "tt.reduce"(%0) <{operation = "add"}> ({
      ^bb1(%arg2: tensor<16x16xi32>, %arg3: tensor<16x16xi32>):
        %2 = "arith.addi"(%arg2, %arg3) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
        "scf.yield"(%2) : (tensor<16x16xi32>) -> ()
    }) : (tensor<16x16xi32>) -> tensor<16x16xi32>
    "tt.return"(%1) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()