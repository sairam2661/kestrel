"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, tensor<3x3xi32>) -> (i32, tensor<3x3xi32>), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: tensor<3x3xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg1, %0, %0) <{indexing_maps = [#affine_map], iterator_types = [index, index]}> : (tensor<3x3xi32>, index, index) -> i32
    %2 = "secret.generic"(%arg0, %1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %3 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret_secret, i32) -> i32
    %4 = "tensor.insert"(%2, %arg1, %0, %0) <{indexing_maps = [#affine_map], iterator_types = [index, index]}> : (i32, tensor<3x3xi32>, index, index) -> tensor<3x3xi32>
    %5 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "func.return"(%5, %4) : (i32, tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()