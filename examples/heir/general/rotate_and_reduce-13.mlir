"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> i32, sym_name = "simple_sum_multiple_non_tensor_operands"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %11 = "arith.addi"(%8, %9) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %12 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %13 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %14 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %15 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %16 = "tensor.extract"(%arg0, %4) : (tensor<8xi32>, index) -> i32
    %17 = "tensor.extract"(%arg0, %5) : (tensor<8xi32>, index) -> i32
    %18 = "tensor.extract"(%arg0, %6) : (tensor<8xi32>, index) -> i32
    %19 = "tensor.extract"(%arg0, %7) : (tensor<8xi32>, index) -> i32
    %20 = "arith.addi"(%12, %13) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %23 = "arith.addi"(%22, %9) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %24 = "arith.addi"(%10, %23) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %25 = "arith.addi"(%11, %24) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %26 = "arith.addi"(%arg1, %25) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %27 = "arith.addi"(%26, %15) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %28 = "arith.addi"(%27, %16) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %29 = "arith.addi"(%28, %17) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %30 = "arith.addi"(%29, %18) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %31 = "arith.addi"(%30, %19) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %32 = "arith.addi"(%31, %14) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%32) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

