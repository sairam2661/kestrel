"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<2xi32>) -> (tensor<2xi32>, index), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: index, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowmode}>({}) : (index, index) -> index
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "tensor.insert"(%2, %arg1, %1) <{index.type = index}> : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %4 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflowmode}>({}) : (index, index) -> index
    "func.return"(%3, %4) : (tensor<2xi32>, index) -> ()
  }) : () -> ()
}) : () -> ()