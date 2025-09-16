"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>) -> tensor<10xi1>, sym_name = "fold_eq_i32"}> ({
  ^bb0(%arg0: tensor<10xi32>):
    %0 = "tosa.equal"(%arg0, %arg0) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi1>
    "func.return"(%0) : (tensor<10xi1>) -> ()
  }) : () -> ()
}) : () -> ()

