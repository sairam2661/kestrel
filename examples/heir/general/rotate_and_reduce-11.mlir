"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, index) -> i32, sym_name = "not_supported_non_constant_index_access"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %arg1) : (tensor<8xi32>, index) -> i32
    %11 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %12 = "tensor.extract"(%arg0, %4) : (tensor<8xi32>, index) -> i32
    %13 = "tensor.extract"(%arg0, %5) : (tensor<8xi32>, index) -> i32
    %14 = "tensor.extract"(%arg0, %6) : (tensor<8xi32>, index) -> i32
    %15 = "tensor.extract"(%arg0, %7) : (tensor<8xi32>, index) -> i32
    %16 = "arith.addi"(%8, %9) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %18 = "arith.addi"(%17, %11) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %19 = "arith.addi"(%18, %12) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %13) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %14) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %15) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%22) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

