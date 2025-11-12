"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, i32, i32) -> tensor<16xi32>, sym_name = "custom_op"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.cmpi"(%arg1, %arg2, "sgt") <{}> : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %arg0) <{}> : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.muli"(%arg1, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.remsi"(%5, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.xori"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()