"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8xi32>) -> (i32, tensor<8xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %5 = "arith.cmpi"(%4, %0) <{predicate = 0 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %6 = "arith.select"(%5, %arg1, %0) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "arith.divsi"(%3, %1) : (i32, i32) -> i32
    %8 = "tt.reduce"(%6) <{axis = 0 : i32, operation = "add"}> : (tensor<8xi32>) -> i32
    "tt.return"(%7, %8) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()