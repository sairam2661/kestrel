"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "xor_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0) ({
    ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
      %1 = "arith.xori"(%arg2, %arg3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%1) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "tt.reduce"(%arg1) ({
    ^bb1(%arg4: tensor<16xi32>, %arg5: tensor<16xi32>):
      %3 = "arith.xori"(%arg4, %arg5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%3) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.xori"(%0, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()