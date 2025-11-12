"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor1xi32, !secret_secret_index) -> !secret_secret_tensor1xi32, sym_name = "fuzz_secret_generic"}> ({
  ^bb0(%arg0: !secret_secret_tensor1xi32, %arg1: !secret_secret_index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<1xi32>, %arg3: index):
      %2 = "arith.cmpi"(%arg3, %0, "ne") : (index, i32, i1) -> i1
      %3 = "arith.select"(%2, %arg3, %0) : (i1, index, i32) -> i32
      %4 = "arith.addi"(%arg2, %3) : (tensor<1xi32>, i32) -> tensor<1xi32>
      "secret.yield"(%4) : (tensor<1xi32>) -> ()
    }) : (!secret_secret_tensor1xi32, !secret_secret_index) -> !secret_secret_tensor1xi32
    "func.return"(%1) : (!secret_secret_tensor1xi32) -> ()
  }) : () -> ()
}) : () -> ()