"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xi32>) -> i32, sym_name = "tensor_rotate_sum"}> ({
  ^bb0(%arg0: tensor<2x4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x4xi32>, index, index) -> i32
    %5 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x4xi32>, index, index) -> i32
    %6 = "tensor.extract"(%arg0, %0, %2) : (tensor<2x4xi32>, index, index) -> i32
    %7 = "tensor.extract"(%arg0, %0, %3) : (tensor<2x4xi32>, index, index) -> i32
    %8 = "tensor_ext.rotate"(%arg0, %1, %2) : (tensor<2x4xi32>, index, index) -> tensor<2x4xi32>
    %9 = "tensor.extract"(%8, %0, %0) : (tensor<2x4xi32>, index, index) -> i32
    %10 = "tensor.extract"(%8, %0, %1) : (tensor<2x4xi32>, index, index) -> i32
    %11 = "tensor.extract"(%8, %0, %2) : (tensor<2x4xi32>, index, index) -> i32
    %12 = "tensor.extract"(%8, %0, %3) : (tensor<2x4xi32>, index, index) -> i32
    %13 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %14 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "arith.addi"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %16 = "arith.addi"(%11, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%13, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%15, %16) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%17, %18) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%19) : (i32) -> ()
  }) : () -> ()
}) : () -> ()