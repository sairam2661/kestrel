"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<32xi32>, !secretsecret) -> !secretsecret, sym_name = "mixing_dialects"}> ({
    ^bb0(%arg0: !secretsecret, %arg1: tensor<32xi32>, %arg2: !secretsecret):
      %0 = "arith.constant"() <{value = 1023 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2047 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 3071 : i32}> : () -> i32
      %3 = "secret.generic"(%arg1, %0, %1, %2) ({
        ^bb1(%arg3: tensor<32xi32>, %arg4: i32, %arg5: i32, %arg6: i32):
          %4 = "tensor.extract"(%arg3, %arg4) : (tensor<32xi32>, i32) -> i32
          %5 = "tensor.extract"(%arg3, %arg5) : (tensor<32xi32>, i32) -> i32
          %6 = "tensor.extract"(%arg3, %arg6) : (tensor<32xi32>, i32) -> i32
          %7 = "arith.addi"(%4, %5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
          %8 = "arith.addi"(%7, %6) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
          %9 = "arith.constant"() <{value = 2 : index}> : () -> index
          %10 = "tensor.insert"(%8, %arg3, %9) : (i32, tensor<32xi32>, index) -> tensor<32xi32>
          "secret.yield"(%10) : (tensor<32xi32>) -> ()
      }) : (tensor<32xi32>, i32, i32, i32) -> tensor<32xi32>
      %11 = "secret.generic"(%arg0, %arg2, %arg1) ({
        ^bb2(%arg7: !secretsecret, %arg8: !secretsecret, %arg9: tensor<32xi32>):
          %10 = "arith.constant"() <{value = 511 : i32}> : () -> i32
          %11 = "tensor.extract"(%arg9, %10) : (tensor<32xi32>, i32) -> i32
          %12 = "arith.constant"() <{value = 1 : index}> : () -> index
          %13 = "tensor.insert"(%11, %arg9, %12) : (i32, tensor<32xi32>, index) -> tensor<32xi32>
          "secret.yield"(%13) : (tensor<32xi32>) -> ()
      }) : (!secretsecret, !secretsecret, tensor<32xi32>) -> tensor<32xi32>
      %14 = "func.return"(%11) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()