"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor_and_shift", sym_visibility = "private"}> ({
    ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.xori"(%arg0, %arg1) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
      %2 = "arith.shli"(%1, %c1_i32) : (tensor<4xi8>, i32) -> tensor<4xi8>
      %3 = "arith.shri"(%2, %c2_i32) : (tensor<4xi8>, i32) -> tensor<4xi8>
      "func.return"(%3) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()