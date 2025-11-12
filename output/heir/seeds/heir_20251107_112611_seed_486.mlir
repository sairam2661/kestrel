"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi16>) -> tensor<4xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi16>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 30 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 40 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 50 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 60 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 70 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 80 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 90 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 1 : index}> : () -> index
    %11 = "arith.constant"() <{value = 2 : index}> : () -> index
    %12 = "arith.constant"() <{value = 3 : index}> : () -> index
    %13 = "arith.constant"() <{value = 4 : index}> : () -> index
    %14 = "tensor.extract"(%arg0, %10) : (tensor<4xi32>, index) -> i32
    %15 = "tensor.extract"(%arg0, %11) : (tensor<4xi32>, index) -> i32
    %16 = "tensor.extract"(%arg0, %12) : (tensor<4xi32>, index) -> i32
    %17 = "tensor.extract"(%arg0, %13) : (tensor<4xi32>, index) -> i32
    %18 = "arith.addi"(%14, %15) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %19 = "arith.addi"(%18, %16) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %17) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %21 = "arith.muli"(%20, %0) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %22 = "arith.muli"(%21, %1) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %23 = "arith.muli"(%22, %2) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %24 = "arith.muli"(%23, %3) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %25 = "arith.muli"(%24, %4) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %26 = "arith.muli"(%25, %5) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %27 = "arith.muli"(%26, %6) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %28 = "arith.muli"(%27, %7) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %29 = "arith.muli"(%28, %8) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %30 = "arith.muli"(%29, %9) <{overflowFlags = #arith_overflowFlagsattrs}> : (i32, i32) -> i32
    %31 = "tensor.insert"(%30, %arg0, %10) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %32 = "tensor.insert"(%28, %arg0, %11) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %33 = "tensor.insert"(%27, %arg0, %12) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %34 = "tensor.insert"(%26, %arg0, %13) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%34) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()