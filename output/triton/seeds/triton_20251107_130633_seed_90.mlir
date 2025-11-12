"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "tensor_op_combinations"}> ({
    ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
      %0 = "arith.constant"() <{value = dense<5> : tensor<i32>}> : () -> tensor<i32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflow_NONE}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %3 = "arith.remsi"(%2, %0) <{overflowFlags = #arith_overflow_NONE}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %4 = "arith.cmpi"(%3, %0) <{predicate = 4 : i64}> : (tensor<i32>, tensor<i32>) -> tensor<i1>
      %5 = "arith.select"(%4, %2, %3) : (tensor<i1>, tensor<i32>, tensor<i32>) -> tensor<i32>
      "tt.return"(%5) : (tensor<i32>) -> ()
  }) : () -> (tensor<i32>)
}) : () -> (tensor<i32>)