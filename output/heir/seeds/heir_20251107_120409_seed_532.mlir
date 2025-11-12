"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, i32) -> tensor<3xi32>, sym_name = "mixed_op_function"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %c0) : (tensor<3xi32>, index) -> i32
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "tensor.insert"(%2, %arg0, %c0) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %4 = "tensor.extract"(%3, %c1) : (tensor<3xi32>, index) -> i32
    %5 = "arith.addi"(%4, %c3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %3, %c1) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %7 = "tensor.extract"(%6, %c2) : (tensor<3xi32>, index) -> i32
    %8 = "arith.subi"(%7, %c3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %6, %c2) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%9) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()