"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i1>, tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "select"}> ({
  ^bb0(%arg0: tensor<i1>, %arg1: tensor<i32>, %arg2: tensor<i32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<i1>, tensor<i32>, tensor<i32>) -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

