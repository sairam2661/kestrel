"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> !secretsecret, sym_name = "complex_op_combinations"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %0 = "tensor.extract"(%arg0, %c0) : (tensor<16xi8>, index) -> i8
    %1 = "tensor.extract"(%arg1, %c1) : (tensor<16xi8>, index) -> i8
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
    %3 = "tensor.extract"(%arg0, %c2) : (tensor<16xi8>, index) -> i8
    %4 = "tensor.extract"(%arg1, %c3) : (tensor<16xi8>, index) -> i8
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
    %6 = "arith.muli"(%2, %5) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
    %7 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<16xi8>, %arg3: tensor<16xi8>):
      %8 = "arith.cmpi"(%arg2, %arg3, "eq") : (tensor<16xi8>, tensor<16xi8>) -> i1
      %9 = "arith.select"(%8, %c1, %c0) : (i1, index, index) -> index
      "secret.yield"(%9) : (index) -> ()
    }) : (tensor<16xi8>, tensor<16xi8>) -> !secretsecret
    %10 = "secret.conceal"(%6) : (i8) -> !secretsecret
    "func.return"(%7) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()