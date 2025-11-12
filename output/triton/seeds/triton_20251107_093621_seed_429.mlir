"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8xi32>) -> (i32, tensor<8xi32>), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = dense<10> : tensor<8xi32>}> : () -> tensor<8xi32>
    %3 = "arith.muli"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "tt.make_range"() <{start = 0 : i32, end = 8 : i32}> : () -> tensor<8xi32>
    %5 = "arith.xori"(%3, %4) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.constant"() <{value = false}> : () -> i1
    %7 = "tt.splat"(%6) : (i1) -> tensor<8xi1>
    %8 = "arith.cmpi"(%3, %4) <{predicate = 0 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %9 = "arith.select"(%7, %8, %5) : (tensor<8xi1>, tensor<8xi1>, tensor<8xi32>) -> tensor<8xi32>
    %10 = "tt.expand_dims"(%9) <{axis = 0 : i32}> : (tensor<8xi32>) -> tensor<1x8xi32>
    "tt.return"(%1, %10) : (i32, tensor<1x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()