"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "test_rotate_and_multiply"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "tensor.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "tensor_ext.rotate"(%arg0, %0) <{axis = 1}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()