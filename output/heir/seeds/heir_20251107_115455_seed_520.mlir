"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi8>, tensor<5xi8>) -> tensor<5xi8>, sym_name = "fuzz_complex_tensor_insertion"}> ({
  ^bb0(%arg0: tensor<5xi8>, %arg1: tensor<5xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %6 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %7 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %8 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %9 = "arith.constant"() <{value = 4 : i8}> : () -> i8
    %10 = "tensor.extract"(%arg0, %0) : (tensor<5xi8>, index) -> i8
    %11 = "tensor.insert"(%10, %arg1, %1) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %12 = "tensor.extract"(%arg0, %1) : (tensor<5xi8>, index) -> i8
    %13 = "tensor.insert"(%12, %11, %2) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %14 = "tensor.extract"(%arg0, %2) : (tensor<5xi8>, index) -> i8
    %15 = "tensor.insert"(%14, %13, %3) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %16 = "tensor.extract"(%arg0, %3) : (tensor<5xi8>, index) -> i8
    %17 = "tensor.insert"(%16, %15, %4) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %18 = "tensor.extract"(%arg0, %4) : (tensor<5xi8>, index) -> i8
    %19 = "tensor.insert"(%18, %17, %0) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %20 = "arith.addi"(%10, %6) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i8, i8) -> i8
    %21 = "arith.addi"(%12, %7) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i8, i8) -> i8
    %22 = "arith.addi"(%14, %8) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i8, i8) -> i8
    %23 = "arith.addi"(%16, %9) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i8, i8) -> i8
    %24 = "arith.addi"(%18, %5) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i8, i8) -> i8
    %25 = "tensor.insert"(%20, %21, %2) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %26 = "tensor.insert"(%22, %23, %3) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %27 = "tensor.insert"(%24, %25, %4) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    %28 = "tensor.insert"(%26, %27, %0) : (i8, tensor<5xi8>, index) -> tensor<5xi8>
    "func.return"(%28) : (tensor<5xi8>) -> ()
  }) : () -> ()
}) : () -> ()