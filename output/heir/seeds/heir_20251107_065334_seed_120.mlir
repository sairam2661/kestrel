"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_and_subtract"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "tensor.extract"(%arg0, 0) : (tensor<4xi32>, index) -> i32
      %1 = "tensor.extract"(%arg1, 0) : (tensor<4xi32>, index) -> i32
      %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

      %3 = "tensor.extract"(%arg0, 1) : (tensor<4xi32>, index) -> i32
      %4 = "tensor.extract"(%arg1, 1) : (tensor<4xi32>, index) -> i32
      %5 = "arith.subi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

      %6 = "tensor.extract"(%arg0, 2) : (tensor<4xi32>, index) -> i32
      %7 = "tensor.extract"(%arg1, 2) : (tensor<4xi32>, index) -> i32
      %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

      %9 = "tensor.extract"(%arg0, 3) : (tensor<4xi32>, index) -> i32
      %10 = "tensor.extract"(%arg1, 3) : (tensor<4xi32>, index) -> i32
      %11 = "arith.subi"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

      %12 = "tensor.insert"(%2, %arg0, 0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %13 = "tensor.insert"(%5, %12, 1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %14 = "tensor.insert"(%8, %13, 2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %15 = "tensor.insert"(%11, %14, 3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>

      "func.return"(%15) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()