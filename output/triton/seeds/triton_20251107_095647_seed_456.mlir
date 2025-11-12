"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "vector_add"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 0 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %2 = "arith.select"(%1, %arg0, %0) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.cmpi"(%arg1, %0) <{predicate = 0 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %4 = "arith.select"(%3, %arg1, %0) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.addi"(%2, %4) <{overflowFlags = #arith_OVERFLOW_NONE}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%5) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()