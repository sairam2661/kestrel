"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi32>, sym_name = "tensor_reduce"}> ({
    ^bb0(%arg0: tensor<16xi16>, %arg1: tensor<16xi16>):
      %0 = "tt.reduce"(%arg0, %arg1) ({
        ^bb1(%acc: tensor<16xi32>, %value: tensor<16xi16>):
          %1 = "arith.addi"(%acc, %value) : (tensor<16xi32>, tensor<16xi16>) -> tensor<16xi32>
          "scf.yield"(%1) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi32>
      "tt.return"(%0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()