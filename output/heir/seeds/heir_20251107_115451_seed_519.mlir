"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, i32) -> tensor<2xi32>, sym_name = "tensor_insert_mixed_flow"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.select"(%arg1, %0, %0) <{falseValue = #arith_cst, trueValue = #arith_cst}> : (i32, index, index) -> index
    %2 = "tensor.extract"(%arg0, %1) : (tensor<2xi32>, index) -> i32
    %3 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, %1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%4) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()