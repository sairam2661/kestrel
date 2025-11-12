"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> tensor<8xi32>, sym_name = "rotate_and_add"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "tensor_ext.rotate"(%arg0, %1) : (tensor<8xi32>, i32) -> tensor<8xi32>
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "tensor_ext.rotate"(%2, %3) : (tensor<8xi32>, i32) -> tensor<8xi32>
    "func.return"(%4) : (tensor<8xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi64>, i64) -> tensor<4xi64>, sym_name = "rotate_and_subtract"}> ({
  ^bb0(%arg0: tensor<4xi64>, %arg1: i64):
    %0 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %1 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %2 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi64>, i64) -> tensor<4xi64>
    %3 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %4 = "tensor_ext.rotate"(%2, %3) : (tensor<4xi64>, i64) -> tensor<4xi64>
    "func.return"(%4) : (tensor<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()