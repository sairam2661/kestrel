"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_arith_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.subi"(%2, %0) <{overflowFlags = #arith_overflow_mode}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    %4 = "arith.muli"(%3, %1) <{overflowFlags = #arith_overflow_mode}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    %5 = "tensor.extract"(%4, %0) : (tensor<4xi32>, i32) -> i32
    %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "arith.select"(%5, %6, %1) : (i32, i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg0, %0) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()