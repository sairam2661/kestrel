"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %0 = "arith.addi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, i32) -> tensor<8xi32>
    %1 = "arith.remsi"(%arg1, %c2_i32) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, i32) -> tensor<8xi32>
    %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.muli"(%2, %c3_i32) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, i32) -> tensor<8xi32>
    %4 = "arith.cmpi"(%3, %0) <{predicate = 5 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<i1>
    %5 = "arith.select"(%4, %3, %2) : (tensor<i1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%5) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()