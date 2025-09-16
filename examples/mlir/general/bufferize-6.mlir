"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi1>, tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "elementwise_select"}> ({
  ^bb0(%arg0: tensor<5xi1>, %arg1: tensor<5xi32>, %arg2: tensor<5xi32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<5xi1>, tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>
    "func.return"(%0) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

