"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>) -> i32, sym_name = "not_supported_missing_indices"}> ({
  ^bb0(%arg0: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %10 = "arith.constant"() <{value = 10 : index}> : () -> index
    %11 = "arith.constant"() <{value = 11 : index}> : () -> index
    %12 = "arith.constant"() <{value = 12 : index}> : () -> index
    %13 = "arith.constant"() <{value = 13 : index}> : () -> index
    %14 = "arith.constant"() <{value = 14 : index}> : () -> index
    %15 = "tensor.extract"(%arg0, %0) : (tensor<16xi32>, index) -> i32
    %16 = "tensor.extract"(%arg0, %1) : (tensor<16xi32>, index) -> i32
    %17 = "tensor.extract"(%arg0, %2) : (tensor<16xi32>, index) -> i32
    %18 = "tensor.extract"(%arg0, %3) : (tensor<16xi32>, index) -> i32
    %19 = "tensor.extract"(%arg0, %4) : (tensor<16xi32>, index) -> i32
    %20 = "tensor.extract"(%arg0, %5) : (tensor<16xi32>, index) -> i32
    %21 = "tensor.extract"(%arg0, %6) : (tensor<16xi32>, index) -> i32
    %22 = "tensor.extract"(%arg0, %7) : (tensor<16xi32>, index) -> i32
    %23 = "tensor.extract"(%arg0, %8) : (tensor<16xi32>, index) -> i32
    %24 = "tensor.extract"(%arg0, %9) : (tensor<16xi32>, index) -> i32
    %25 = "tensor.extract"(%arg0, %10) : (tensor<16xi32>, index) -> i32
    %26 = "tensor.extract"(%arg0, %11) : (tensor<16xi32>, index) -> i32
    %27 = "tensor.extract"(%arg0, %12) : (tensor<16xi32>, index) -> i32
    %28 = "tensor.extract"(%arg0, %13) : (tensor<16xi32>, index) -> i32
    %29 = "tensor.extract"(%arg0, %14) : (tensor<16xi32>, index) -> i32
    %30 = "arith.addi"(%15, %16) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %31 = "arith.addi"(%30, %17) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %32 = "arith.addi"(%31, %18) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %33 = "arith.addi"(%32, %19) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %34 = "arith.addi"(%33, %20) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %35 = "arith.addi"(%34, %21) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %36 = "arith.addi"(%35, %22) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %37 = "arith.addi"(%36, %23) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %38 = "arith.addi"(%37, %24) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %39 = "arith.addi"(%38, %25) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %40 = "arith.addi"(%39, %26) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %41 = "arith.addi"(%40, %27) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %42 = "arith.addi"(%41, %28) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %43 = "arith.addi"(%42, %29) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%43) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

