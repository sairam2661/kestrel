"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_ops"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "arith.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
      %1 = "arith.constant"() <{value = dense<[5, 6, 7, 8]> : tensor<4xi32>}> : () -> tensor<4xi32>
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowModes}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %3 = "tensor.extract"(%2, 0) : (tensor<4xi32>, index) -> i32
      %4 = "tensor.extract"(%2, 1) : (tensor<4xi32>, index) -> i32
      %5 = "arith.mul"(%3, %4) : (i32, i32) -> i32
      %6 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %7 = "arith.cmpi"(%5, %6) <{predicate = 4}> : (i32, i32) -> i1
      %8 = "arith.select"(%7, %0, %1) : (i1, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()