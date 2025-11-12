"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "tensor_reduce_test"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3:2 = "tt.reduce"(%arg1, %0, %1, %2) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: tensor<16xi32>, %arg5: tensor<16xi32>):
      %6 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6, %arg4) : (i32, tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>, i32, tensor<16xi32>) -> (i32, tensor<16xi32>)
    "tt.return"(%3#1) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()