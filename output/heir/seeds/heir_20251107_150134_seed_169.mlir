"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, index, index) -> tensor<3x3xi32>, sym_name = "tensor_insert_extract_stress"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "tensor.insert"(%0, %arg0, %arg1, %arg2) : (i32, tensor<3x3xi32>, index, index) -> tensor<3x3xi32>
    %2 = "tensor.extract"(%1, %arg1, %arg2) : (tensor<3x3xi32>, index, index) -> i32
    %3 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflow_attributes_overflow}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %1, %arg1, %arg2) : (i32, tensor<3x3xi32>, index, index) -> tensor<3x3xi32>
    "func.return"(%4) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()