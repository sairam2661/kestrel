"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> i32, sym_name = "tensor_reduce"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %4) : (tensor<4xi32>, index) -> i32
    %9 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.addi"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.addi"(%0, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()