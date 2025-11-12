"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %1 = "tt.reduce"(%0) <{operation = "add", dimensions = [0]}> ({
    ^bb1(%arg2: tensor<1xi32>, %arg3: tensor<1xi32>):
      %2 = "arith.addi"(%arg2, %arg3) : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
      "scf.yield"(%2) : (tensor<1xi32>) -> ()
    }) : (tensor<64xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()