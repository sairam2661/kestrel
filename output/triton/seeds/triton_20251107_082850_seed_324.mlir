"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_signed}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.divsi"(%1, %0) <{overflowFlags = #arith_overflow_signed}> : (tensor<16xi32>, i32) -> tensor<16xi32>
    %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> i1
    %5 = "arith.select"(%4, %3, %2) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()