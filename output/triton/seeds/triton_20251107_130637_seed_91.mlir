"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "tensor_op_combinations"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{start = 0 : i32, end = 64 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow} > : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.remsi"(%2, %1) <{overflowFlags = #arith_overflow} > : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.muli"(%3, %1) <{overflowFlags = #arith_overflow} > : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.xori"(%4, %1) <{overflowFlags = #arith_overflow} > : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.select"(%5, %3, %2) <{predicate = 0 : i64}> : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%6) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()