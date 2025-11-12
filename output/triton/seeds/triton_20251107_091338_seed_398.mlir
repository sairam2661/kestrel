"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.subi"(%arg0, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.cmpi"(%0, %1, "sgt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "scf.if"(%2) ({
    ^bb0(%arg3: tensor<16xi32>):
      "scf.yield"(%arg0) : (tensor<16xi32>) -> tensor<16xi32>
    }) : tensor<16xi32> -> tensor<16xi32>
    %4 = "tt.reduce"(%3) ({
    ^bb0(%arg4: tensor<16xi32>, %arg5: tensor<16xi32>):
      %6 = "arith.addi"(%arg4, %arg5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%6) : (tensor<16xi32>) -> tensor<16xi32>
    }) : tensor<16xi32> -> tensor<16xi32>
    "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()