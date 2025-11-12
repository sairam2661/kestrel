"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<10xi8>, index) -> !secretsecret, sym_name = "stress_test"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<10xi8>, %arg2: index):
    %0 = "arith.constant"() <{value = 5 : index}> : () -> index
    %1 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %2 = "secret.conceal"(%arg1, %0) : (tensor<10xi8>, index) -> !secretsecret
    %3 = "secret.generic"(%arg0, %2, %arg2) ({
    ^bb0(%arg3: tensor<10xi8>, %arg4: tensor<10xi8>, %arg5: index):
      %4 = "scf.for"(%arg5, %0, %1, %0) ({
      ^bb0(%arg6: index, %arg7: i8):
        %5 = "tensor.extract"(%arg3, %arg6) : (tensor<10xi8>, index) -> i8
        %6 = "arith.addi"(%5, %arg7) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
        "scf.yield"(%6) : (i8) -> ()
      }) {lower = 0 : i64, upper = 10 : i64} : (index, index, i8, i8) -> i8
      "secret.yield"(%4) : (i8) -> ()
    }) : (!secretsecret, !secretsecret, index) -> !secretsecret
    "func.return"(%3) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()