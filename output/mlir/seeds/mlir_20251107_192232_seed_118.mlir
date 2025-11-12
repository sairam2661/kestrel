"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>, sym_name = "test_add"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    "func.return"(%0) : (tensor<5x5xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>, sym_name = "test_sub"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %0 = "tosa.sub"(%arg0, %arg1) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    "func.return"(%0) : (tensor<5x5xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>, sym_name = "test_mul"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %0 = "tosa.mul"(%arg0, %arg1) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    "func.return"(%0) : (tensor<5x5xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>, sym_name = "test_div"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %0 = "tosa.div"(%arg0, %arg1) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    "func.return"(%0) : (tensor<5x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()