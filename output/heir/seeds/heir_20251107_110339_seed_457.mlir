"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, tensor<4x4xi32>) -> !secret_secret, sym_name = "process_secret_tensor"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: tensor<4x4xi32>):
    %cst = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cst1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %cst2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %cst3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %cst4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %cst5 = "arith.constant"() <{value = 6 : index}> : () -> index

    %extract = "tensor.extract"(%arg1, %cst2, %cst3) : (tensor<4x4xi32>, index, index) -> i32
    %add = "arith.addi"(%extract, %cst) : (i32, i32) -> i32
    %insert = "tensor.insert"(%add, %arg1, %cst4, %cst5) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>

    %secret_op = "secret.generic"(%insert) ({
    ^bb0(%arg2: i32):
      %sub = "arith.subi"(%arg2, %cst1) : (i32, i32) -> i32
      "secret.yield"(%sub) : (i32) -> ()
    }) : (!secret_secret) -> !secret_secret

    "func.return"(%secret_op) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()