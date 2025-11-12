"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %3 = "arith.cmpi"(%2, %1) <{predicate = 4 : i64}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi1>
    %4 = "arith.select"(%3, %2, %1) : (tensor<8x8xi1>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %5 = "tt.make_range"() <{start = 0 : i32, end = 8 : i32}> : () -> tensor<8xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 1 : i32}> : (tensor<8xi32>) -> tensor<8x1xi32>
    %7 = "tt.broadcast"(%6) : (tensor<8x1xi32>) -> tensor<8x8xi32>
    %8 = "arith.addi"(%7, %4) <{overflowFlags = #arith_overflow_NONE}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    "tt.return"(%8) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()