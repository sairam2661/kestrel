"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_rotation_and_addition"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %9 = "arith.addi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%6, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.addi"(%7, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.addi"(%8, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "tensor_ext.rotate"(%arg0, %4) <{period = 2 : index, steps = 2 : index}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %14 = "tensor.extract"(%13, %0) : (tensor<4xi32>, index) -> i32
    %15 = "tensor.extract"(%13, %1) : (tensor<4xi32>, index) -> i32
    %16 = "tensor.extract"(%13, %2) : (tensor<4xi32>, index) -> i32
    %17 = "tensor.extract"(%13, %3) : (tensor<4xi32>, index) -> i32
    %18 = "tensor.insert"(%9, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %19 = "tensor.insert"(%10, %18, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %20 = "tensor.insert"(%11, %19, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %21 = "tensor.insert"(%12, %20, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%21) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_rotation_and_subtraction"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %9 = "arith.subi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.subi"(%6, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.subi"(%7, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.subi"(%8, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "tensor_ext.rotate"(%arg0, %4) <{period = 2 : index, steps = 2 : index}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %14 = "tensor.extract"(%13, %0) : (tensor<4xi32>, index) -> i32
    %15 = "tensor.extract"(%13, %1) : (tensor<4xi32>, index) -> i32
    %16 = "tensor.extract"(%13, %2) : (tensor<4xi32>, index) -> i32
    %17 = "tensor.extract"(%13, %3) : (tensor<4xi32>, index) -> i32
    %18 = "tensor.insert"(%9, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %19 = "tensor.insert"(%10, %18, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %20 = "tensor.insert"(%11, %19, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %21 = "tensor.insert"(%12, %20, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%21) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()