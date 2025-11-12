"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, i1) -> tensor<i32>, sym_name = "conditional_tensor_select"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: i1):
    %0 = "arith.select"(%arg1, %arg0, %arg0) : (i1, tensor<i32>, tensor<i32>) -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()