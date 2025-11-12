"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, i32) -> tensor<4x4xi32>, sym_name = "tensor_modify_complex"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0, %0) : (tensor<4x4xi32>, i32, i32) -> i32
    %3 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, %0, %0) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "tensor.extract"(%4, %1, %1) : (tensor<4x4xi32>, i32, i32) -> i32
    %7 = "arith.subi"(%6, %arg1) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %4, %1, %1) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    "func.return"(%8) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "simple_add"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %0 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_ops"}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.muli"(%arg4, %0) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
    %2 = "func.call"(%1, %arg5) <{callee = @simple_add}> : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()