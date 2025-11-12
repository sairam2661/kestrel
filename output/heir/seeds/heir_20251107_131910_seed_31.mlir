"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<2xi32>, i32) -> !secretsecret, sym_name = "nested_generic"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<2xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "secret.conceal"(%0) : (i1) -> !secretsecret
    %2 = "secret.generic"(%arg0, %arg1, %arg2, %1) ({
    ^bb0(%arg3: !secretsecret, %arg4: tensor<2xi32>, %arg5: i32, %arg6: !secretsecret):
      %3 = "secret.generic"(%arg3, %arg4) ({
      ^bb0(%arg7: !secretsecret, %arg8: tensor<2xi32>):
        %4 = "tensor.extract"(%arg8, %arg5) : (tensor<2xi32>, i32) -> i32
        %5 = "arith.addi"(%arg5, %4) : (i32, i32) -> i32
        %6 = "secret.generic"(%arg6, %5) ({
        ^bb0(%arg9: !secretsecret, %arg10: i32):
          %7 = "arith.muli"(%arg10, %arg10) : (i32, i32) -> i32
          "secret.yield"(%7) : (i32) -> ()
        }) : (!secretsecret, i32) -> !secretsecret
        "secret.yield"(%6) : (!secretsecret) -> ()
      }) : (!secretsecret, tensor<2xi32>) -> !secretsecret
      "secret.yield"(%3) : (!secretsecret) -> ()
    }) : (!secretsecret, tensor<2xi32>, i32, !secretsecret) -> !secretsecret
    "func.return"(%2) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()