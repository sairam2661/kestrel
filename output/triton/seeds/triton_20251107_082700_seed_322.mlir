"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "tensor_op_combinations"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %4 = "arith.divsi"(%arg0, %arg1) <{signedness = #arith_signed, overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi1>
    %6 = "tt.expand_dims"(%5) <{axis = 2 : i32}> : (tensor<8x8xi1>) -> tensor<8x8x1xi1>
    %7 = "tt.reduce"(%6) <{axis = 2 : i32}> ({
    ^bb0(%arg7: i32, %arg8: i32):
      %9 = "arith.addi"(%arg7, %arg8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%9) : (i32) -> ()
    }) : (tensor<8x8x1xi1>) -> tensor<8x8xi1>
    %10 = "arith.select"(%5, %arg0, %arg1) : (tensor<8x8xi1>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    "tt.return"(%10) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()