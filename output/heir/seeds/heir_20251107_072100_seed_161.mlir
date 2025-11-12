"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> i32, sym_name = "tensor_sum_with_select"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.cmpi"(%7, %4, "slt") : (i32, i32) -> i1
    %9 = "arith.select"(%8, %7, %4) : (i1, i32, i32) -> i32
    %10 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %12 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "arith.addi"(%9, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %14 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %15 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %16 = "arith.addi"(%14, %15) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%13, %16) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %19 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %20 = "arith.addi"(%18, %19) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %21 = "arith.addi"(%17, %20) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%21) : (i32) -> ()
  }) : () -> ()
}) : () -> ()