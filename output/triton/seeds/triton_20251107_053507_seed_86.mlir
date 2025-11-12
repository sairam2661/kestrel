"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>, sym_name = "xor_and_reduce"}> ({
    ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
      %0 = "arith.xori"(%arg0, %arg1) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      %1 = "arith.constant"() <{value = dense<0> : tensor<16xi8>}> : () -> tensor<16xi8>
      %2 = "arith.cmpi"(%0, %1, "eq") : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi1>
      %3 = "tt.reduce"(%2) <{op = "and"}> : (tensor<16xi1>) -> i1
      %4 = "arith.select"(%3, %0, %1) : (i1, tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      "tt.return"(%4) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()