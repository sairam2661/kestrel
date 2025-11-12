"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_unary_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>):
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflow_mode}> : (tensor<8xi32>, i32) -> tensor<8xi32>
    %3 = "arith.select"(%2, %arg0, %2) : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "arith.divsi"(%3, %1) <{overflowFlags = #arith_overflow_mode}> : (tensor<8xi32>, i32) -> tensor<8xi32>
    %5 = "arith.remsi"(%4, %1) <{overflowFlags = #arith_overflow_mode}> : (tensor<8xi32>, i32) -> tensor<8xi32>
    %6 = "arith.xori"(%5, %1) : (tensor<8xi32>, i32) -> tensor<8xi32>
    "tt.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()