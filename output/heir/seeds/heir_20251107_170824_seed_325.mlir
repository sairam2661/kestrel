#new_layout = #tensor_ext_new_layout

"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>) -> (tensor<2x2xi32>), sym_name = "complex_rotate_test"}> ({
    ^bb0(%arg0: tensor<2x2xi32>):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %3 = "tensor_ext.rotate"(%1, %2) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      %4 = "arith.constant"() <{value = -1 : i32}> : () -> i32
      %5 = "tensor_ext.rotate"(%3, %4) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      "func.return"(%5) : (tensor<2x2xi32>) -> ()
  }) : () -> (tensor<2x2xi32>)
}) : () -> ()