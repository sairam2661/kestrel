"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_add_rotate"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()