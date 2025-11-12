"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, index, i32) -> i32, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: index, %arg2: i32):
    %0 = "arith.constant"() <{value = 16 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "tensor.extract"(%arg0, %arg1) : (tensor<4xi8>, index) -> i8
    %5 = "arith.addi"(%4, %4) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %6 = "tensor.insert"(%arg0, %5, %0) : (tensor<4xi8>, i8, index) -> tensor<4xi8>
    %7 = "tensor.extract"(%6, %1) : (tensor<4xi8>, index) -> i8
    %8 = "arith.addi"(%7, %7) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %9 = "tensor.insert"(%6, %8, %2) : (tensor<4xi8>, i8, index) -> tensor<4xi8>
    %10 = "tensor.extract"(%9, %2) : (tensor<4xi8>, index) -> i8
    %11 = "arith.addi"(%10, %arg2) <{overflowFlags = #arith_overflownone}> : (i8, i32) -> i32
    "func.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()