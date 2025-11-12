"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi8>) -> i32, sym_name = "complex_tensor_indexing"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg1, %0) : (tensor<4xi8>, index) -> i8
    %5 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, index) -> i8
    %6 = "tensor.extract"(%arg1, %2) : (tensor<4xi8>, index) -> i8
    %7 = "tensor.extract"(%arg1, %3) : (tensor<4xi8>, index) -> i8
    %8 = "arith.addi"(%arg0, %4) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32
    %9 = "arith.addi"(%8, %5) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32
    %10 = "arith.addi"(%9, %6) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32
    %11 = "arith.addi"(%10, %7) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32
    "func.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()