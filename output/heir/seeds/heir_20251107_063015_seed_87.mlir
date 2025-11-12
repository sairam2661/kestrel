"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>, sym_name = "byte_xor_sum"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: tensor<8xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0) : (tensor<8xi8>, index) -> i8
    %9 = "tensor.extract"(%arg1, %0) : (tensor<8xi8>, index) -> i8
    %10 = "arith.xori"(%8, %9) : (i8, i8) -> i8
    %11 = "tensor.extract"(%arg0, %1) : (tensor<8xi8>, index) -> i8
    %12 = "tensor.extract"(%arg1, %1) : (tensor<8xi8>, index) -> i8
    %13 = "arith.xori"(%11, %12) : (i8, i8) -> i8
    %14 = "tensor.extract"(%arg0, %2) : (tensor<8xi8>, index) -> i8
    %15 = "tensor.extract"(%arg1, %2) : (tensor<8xi8>, index) -> i8
    %16 = "arith.xori"(%14, %15) : (i8, i8) -> i8
    %17 = "tensor.extract"(%arg0, %3) : (tensor<8xi8>, index) -> i8
    %18 = "tensor.extract"(%arg1, %3) : (tensor<8xi8>, index) -> i8
    %19 = "arith.xori"(%17, %18) : (i8, i8) -> i8
    %20 = "tensor.extract"(%arg0, %4) : (tensor<8xi8>, index) -> i8
    %21 = "tensor.extract"(%arg1, %4) : (tensor<8xi8>, index) -> i8
    %22 = "arith.xori"(%20, %21) : (i8, i8) -> i8
    %23 = "tensor.extract"(%arg0, %5) : (tensor<8xi8>, index) -> i8
    %24 = "tensor.extract"(%arg1, %5) : (tensor<8xi8>, index) -> i8
    %25 = "arith.xori"(%23, %24) : (i8, i8) -> i8
    %26 = "tensor.extract"(%arg0, %6) : (tensor<8xi8>, index) -> i8
    %27 = "tensor.extract"(%arg1, %6) : (tensor<8xi8>, index) -> i8
    %28 = "arith.xori"(%26, %27) : (i8, i8) -> i8
    %29 = "tensor.extract"(%arg0, %7) : (tensor<8xi8>, index) -> i8
    %30 = "tensor.extract"(%arg1, %7) : (tensor<8xi8>, index) -> i8
    %31 = "arith.xori"(%29, %30) : (i8, i8) -> i8
    %32 = "arith.addi"(%10, %13) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %33 = "arith.addi"(%32, %16) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %34 = "arith.addi"(%33, %19) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %35 = "arith.addi"(%34, %22) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %36 = "arith.addi"(%35, %25) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %37 = "arith.addi"(%36, %28) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %38 = "arith.addi"(%37, %31) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %39 = "tensor.insert"(%38, %arg0, %0) : (i8, tensor<8xi8>, index) -> tensor<8xi8>
    "func.return"(%39) : (tensor<8xi8>) -> ()
  }) : () -> ()
}) : () -> ()