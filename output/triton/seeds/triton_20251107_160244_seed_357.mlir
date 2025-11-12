"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>, sym_name = "xor_and_reduce"}> ({
    ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
      %0 = "arith.xori"(%arg0, %arg1) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      %1 = "arith.constant"() <{value = dense<1 : i8> : tensor<16xi8>}> : () -> tensor<16xi8>
      %2 = "tt.reduce"(%0, %1) ({
        ^bb1(%arg2: tensor<16xi8>, %arg3: tensor<16xi8>):
          %4 = "arith.xori"(%arg2, %arg3) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
          "scf.yield"(%4) : (tensor<16xi8>) -> ()
      }) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      "tt.return"(%2) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()