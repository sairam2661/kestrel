"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_arith_and_tensor"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "tensor.insert"(%0, %arg1, %4) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %5, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %7, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %10 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %9, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%11) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()