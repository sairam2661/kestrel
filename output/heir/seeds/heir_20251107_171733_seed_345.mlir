"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, index, index) -> tensor<4xi16>, sym_name = "tensor_complexity_test"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 2 : i16}> : () -> i16
    %9 = "arith.constant"() <{value = 5 : i16}> : () -> i16
    %10 = "arith.constant"() <{value = 6 : i16}> : () -> i16
    %11 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %12 = "tensor.extract"(%arg0, %0) : (tensor<4xi16>, i32) -> i16
    %13 = "tensor.extract"(%arg0, %1) : (tensor<4xi16>, i32) -> i16
    %14 = "tensor.extract"(%arg0, %2) : (tensor<4xi16>, i32) -> i16
    %15 = "tensor.extract"(%arg0, %3) : (tensor<4xi16>, i32) -> i16
    %16 = "tensor.extract"(%arg0, %4) : (tensor<4xi16>, i32) -> i16
    %17 = "tensor.extract"(%arg0, %5) : (tensor<4xi16>, i32) -> i16
    %18 = "tensor.extract"(%arg0, %6) : (tensor<4xi16>, i32) -> i16
    %19 = "tensor.extract"(%arg0, %7) : (tensor<4xi16>, i32) -> i16
    %20 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %21 = "arith.addi"(%20, %8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %22 = "arith.addi"(%21, %8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %23 = "arith.addi"(%22, %9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %24 = "arith.addi"(%10, %23) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %25 = "arith.addi"(%11, %24) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %26 = "tensor.insert"(%25, %arg0, %0) : (i16, tensor<4xi16>, i32) -> tensor<4xi16>
    %27 = "tensor.insert"(%26, %arg0, %1) : (tensor<4xi16>, tensor<4xi16>, i32) -> tensor<4xi16>
    %28 = "tensor.insert"(%27, %arg0, %2) : (tensor<4xi16>, tensor<4xi16>, i32) -> tensor<4xi16>
    %29 = "tensor.insert"(%28, %arg0, %3) : (tensor<4xi16>, tensor<4xi16>, i32) -> tensor<4xi16>
    %30 = "tensor.insert"(%29, %arg0, %4) : (tensor<4xi16>, tensor<4xi16>, i32) -> tensor<4xi16>
    %31 = "tensor.insert"(%30, %arg0, %5) : (tensor<4xi16>, tensor<4xi16>, i32) -> tensor<4xi16>
    %32 = "tensor.insert"(%31, %arg0, %6) : (tensor<4xi16>, tensor<4xi16>, i32) -> tensor<4xi16>
    %33 = "tensor.insert"(%32, %arg0, %7) : (tensor<4xi16>, tensor<4xi16>, i32) -> tensor<4xi16>
    "func.return"(%33) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()