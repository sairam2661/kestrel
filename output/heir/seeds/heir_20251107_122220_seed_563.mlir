"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> i32, sym_name = "complex_tensor_operation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %12 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflowmode_wrapping}> : (i32, i32) -> i32
    %13 = "arith.addi"(%12, %10) <{overflowFlags = #arith_overflowmode_saturating}> : (i32, i32) -> i32
    %14 = "arith.addi"(%13, %11) <{overflowFlags = #arith_overflowmode_extending}> : (i32, i32) -> i32
    "func.return"(%14) : (i32) -> ()
  }) : () -> ()
}) : () -> ()