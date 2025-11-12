"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "fuzz_complex"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %11 = "arith.addi"(%7, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %12 = "arith.addi"(%8, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %13 = "arith.addi"(%9, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %14 = "arith.addi"(%10, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %15 = "arith.cmpi"(%11, %4, "eq") : (i32, i32) -> i1
    %16 = "arith.cmpi"(%12, %5, "eq") : (i32, i32) -> i1
    %17 = "arith.cmpi"(%13, %6, "eq") : (i32, i32) -> i1
    %18 = "arith.addi"(%15, %16) <{overflowFlags = #arith_OVERFLOW}> : (i1, i1) -> i1
    %19 = "arith.addi"(%18, %17) <{overflowFlags = #arith_OVERFLOW}> : (i1, i1) -> i1
    %20 = "tensor.insert"(%11, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %21 = "tensor.insert"(%12, %20, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %22 = "tensor.insert"(%13, %21, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %23 = "tensor.insert"(%14, %22, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%23) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "fuzz_complex_2"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %11 = "arith.addi"(%7, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %12 = "arith.addi"(%8, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %13 = "arith.addi"(%9, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %14 = "arith.addi"(%10, %arg1) <{overflowFlags = #arith_OVERFLOW}> : (i32, i32) -> i32
    %15 = "arith.cmpi"(%11, %4, "eq") : (i32, i32) -> i1
    %16 = "arith.cmpi"(%12, %5, "eq") : (i32, i32) -> i1
    %17 = "arith.cmpi"(%13, %6, "eq") : (i32, i32) -> i1
    %18 = "arith.addi"(%15, %16) <{overflowFlags = #arith_OVERFLOW}> : (i1, i1) -> i1
    %19 = "arith.addi"(%18, %17) <{overflowFlags = #arith_OVERFLOW}> : (i1, i1) -> i1
    %20 = "tensor.insert"(%11, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %21 = "tensor.insert"(%12, %20, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %22 = "tensor.insert"(%13, %21, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %23 = "tensor.insert"(%14, %22, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%23) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()