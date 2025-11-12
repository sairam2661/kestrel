"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<3x3xf32>, %arg1: tensor<3x3xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<3x3xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>
    "func.return"(%0) : (tensor<3x3xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3x3xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>, sym_name = "matrix_sub"}> ({
  ^bb0(%arg0: tensor<3x3xf32>, %arg1: tensor<3x3xf32>):
    %0 = "arith.subf"(%arg0, %arg1) : (tensor<3x3xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>
    "func.return"(%0) : (tensor<3x3xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i1, sym_name = "compare"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpf"(%arg0, %arg1) : (i32, i32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()