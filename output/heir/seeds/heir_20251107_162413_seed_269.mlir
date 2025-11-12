"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2xi32>, !secretsecret) -> (i32, tensor<2xi32>, !secretsecret), sym_name = "complex_op_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2xi32>, %arg2: !secretsecret):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "tensor.extract"(%arg1, %0) : (tensor<2xi32>, index) -> i32
    %3 = "arith.subi"(%2, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %4:3 = "secret.generic"(%arg2, %arg2, %arg2) ({
    ^bb1(%arg3: i32, %arg4: i32, %arg5: i32):
      %6 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %7 = "arith.addi"(%6, %arg5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %8 = "secret.yield"(%7, %7, %7) : (i32, i32, i32) -> ()
    }) : (!secretsecret, !secretsecret, !secretsecret) -> (!secretsecret, !secretsecret, !secretsecret)
    "func.return"(%1, %arg1, %4#0) : (i32, tensor<2xi32>, !secretsecret) -> ()
  }) : () -> ()
}) : () -> ()