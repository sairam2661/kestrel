"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{nsw = true, nuw = true}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_negate"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.muli"(%arg0, "arith.constant"  )<{nsw = true, nuw = true}> : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_square"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.muli"(%arg0, %arg0) <{nsw = true, nuw = true}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()