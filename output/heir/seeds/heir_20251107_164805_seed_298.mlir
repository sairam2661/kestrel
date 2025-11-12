"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_none}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "tensor.extract"(%1, %0) : (tensor<4xi32>, index) -> i32
    %3 = "arith.addi"(%2, %arg2) <{overflowFlags = #arith_overflow_mode_none}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %1, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "arith.cmpi"("eq", %arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %6 = "arith.select"(%5, %4, %arg0) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()