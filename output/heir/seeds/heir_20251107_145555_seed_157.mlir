"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "manipulate_tensor"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "arith.constant"() <{value = 2 : index}> : () -> index
      %3 = "arith.constant"() <{value = 3 : index}> : () -> index
      %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
      %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
      %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
      %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
      %8 = "arith.addi"(%4, %arg1) <{overflowFlags = #arith_overflowflags}> : (i32, i32) -> i32
      %9 = "arith.addi"(%5, %arg1) <{overflowFlags = #arith_overflowflags}> : (i32, i32) -> i32
      %10 = "arith.addi"(%6, %arg1) <{overflowFlags = #arith_overflowflags}> : (i32, i32) -> i32
      %11 = "arith.addi"(%7, %arg1) <{overflowFlags = #arith_overflowflags}> : (i32, i32) -> i32
      %12 = "tensor.insert"(%8, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %13 = "tensor.insert"(%9, %12, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %14 = "tensor.insert"(%10, %13, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %15 = "tensor.insert"(%11, %14, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "func.return"(%15) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()