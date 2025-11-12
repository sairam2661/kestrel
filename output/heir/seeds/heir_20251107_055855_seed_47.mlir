"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret,i16, tensor<2xi32>) -> tensor<2xi32>, sym_name = "nested_if_with_tensor"}> ({
    ^bb0(%arg0: !secretsecret, %arg1: i16, %arg2: tensor<2xi32>):
      %0 = "arith.constant"() <{value = 1 : i16}> : () -> i16
      %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "scf.if"(%1) ({
        %3 = "scf.if"(%1) ({
          "scf.yield"(%arg2) : (tensor<2xi32>) -> ()
        }, {
          %4 = "tensor.empty"() : () -> tensor<2xi32>
          "scf.yield"(%4) : (tensor<2xi32>) -> ()
        }) : (i16) -> tensor<2xi32>
        "scf.yield"(%3) : (tensor<2xi32>) -> ()
      }, {
        %5 = "tensor.empty"() : () -> tensor<2xi32>
        "scf.yield"(%5) : (tensor<2xi32>) -> ()
      }) : (i16) -> tensor<2xi32>
      "func.return"(%2) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()