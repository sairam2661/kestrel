"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "tensor_combination"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0) : (tensor<i32>, i32) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<i32>, i32) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<i32>, i32) -> tensor<i32>
    "func.return"(%5) : (tensor<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "tensor_subtract"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0) : (tensor<i32>, i32) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<i32>, i32) -> i32
    %4 = "arith.subi"(%2, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<i32>, i32) -> tensor<i32>
    "func.return"(%5) : (tensor<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "integer_sum"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "tensor_modify"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0) : (tensor<i32>, i32) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<i32>, i32) -> i32
    %4 = "func.call"(%2, %3) <{callee = @integer_sum}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<i32>, i32) -> tensor<i32>
    "func.return"(%5) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()