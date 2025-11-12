"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_2x4xi32, !secret_secret_index) -> !secret_secret_tensor_2x4xi32, sym_name = "main"}> ({
  ^bb0(%arg0: !secret_secret_tensor_2x4xi32, %arg1: !secret_secret_index):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c40_i32 = "arith.constant"() <{value = 40 : i32}> : () -> i32
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32

    %extracted = "tensor.extract"(%arg0, %arg1, %c0_i32) : (tensor<2x4xi32>, index, index) -> i32
    %new_value = "arith.addi"(%extracted, %c5_i32) : (i32, i32) -> i32

    %inserted = "tensor.insert"(%new_value, %arg0, %arg1, %c0_i32) : (i32, tensor<2x4xi32>, index, index) -> tensor<2x4xi32>
    "func.return"(%inserted) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()