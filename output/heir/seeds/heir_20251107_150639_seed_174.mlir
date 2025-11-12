"builtin.module"() ({
  "func.func"() <{
    function_type = (i32, !secret_secrettensor3xi32) -> !secret_secrettensor3xi32,
    sym_name = "complex_secret_tensor_op"
  }> ({
    ^bb0(%arg0: i32, %arg1: !secret_secrettensor3xi32):
      %0 = "secret.generic"(%arg1) ({
        ^bb1(%arg2: tensor<3xi32>):
          %1 = "arith.constant"() <{
            value = dense<42> : tensor<3xi32>
          }> : () -> tensor<3xi32>
          %2 = "arith.addi"(%arg2, %1) <{
            overflowFlags = #arith_overflownone
          }> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
          %3 = "arith.cmpi"(%arg0, %arg0) <{
            predicate = "eq"
          }> : (i32, i32) -> i1
          %4 = "scf.if"(%3) ({
            ^bb2:
              %5 = "arith.addi"(%arg2, %arg2) <{
                overflowFlags = #arith_overflownone
              }> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
              "scf.yield"(%5) : (tensor<3xi32>) -> ()
          }, {
            ^bb3:
              "scf.yield"(%2) : (tensor<3xi32>) -> ()
          }) : (i1) -> tensor<3xi32>
          "secret.yield"(%4) : (tensor<3xi32>) -> ()
      }) : (!secret_secrettensor3xi32) -> !secret_secrettensor3xi32
      "func.return"(%0) : (!secret_secrettensor3xi32) -> ()
  }) : () -> ()
}) : () -> ()