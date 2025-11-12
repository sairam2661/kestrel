"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>, sym_name = "xor_combine"}> ({
  ^bb0(%arg0: tensor<1xi32>, %arg1: tensor<1xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %2 = "tensor_ext.assign_layout"(%1, %0) : (tensor<1xi32>, i32) -> tensor<1xi32>
    "func.return"(%2) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()