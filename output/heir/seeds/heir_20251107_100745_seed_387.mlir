"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i32) -> i32, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i32):
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
    %12 = "tensor.extract"(%arg0, %4) : (tensor<4xi32>, index) -> i32
    %13 = "tensor.extract"(%arg0, %5) : (tensor<4xi32>, index) -> i32
    %14 = "tensor.extract"(%arg0, %6) : (tensor<4xi32>, index) -> i32
    %15 = "tensor.extract"(%arg0, %7) : (tensor<4xi32>, index) -> i32
    %16 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%17, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%18, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %15) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %23 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %24 = "tensor.extract"(%arg1, %iv) : (tensor<4xi32>, index) -> i32
      %25 = "arith.addi"(%22, %24) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%25) : (i32) -> ()
    }) : (i32) -> ()
    %26 = "arith.addi"(%23, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%26) : (i32) -> ()
  }) : () -> ()
}) : () -> ()