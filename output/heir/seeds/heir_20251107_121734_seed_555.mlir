"builtin.module"() ({
  "func.func"() <{function_type = (i1, tensor<2xi8>, tensor<2xi8>) -> tensor<2xi8>, sym_name = "select_tensor"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<2xi8>, %arg2: tensor<2xi8>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, tensor<2xi8>, tensor<2xi8>) -> tensor<2xi8>
    "func.return"(%0) : (tensor<2xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi8>, tensor<2xi8>) -> tensor<2xi8>, sym_name = "select_tensor_with_mask"}> ({
  ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xi8>, %arg2: tensor<2xi8>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<2xi1>, tensor<2xi8>, tensor<2xi8>) -> tensor<2xi8>
    "func.return"(%0) : (tensor<2xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, i8, i8) -> i8, sym_name = "select_scalar"}> ({
  ^bb0(%arg0: i1, %arg1: i8, %arg2: i8):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, i8, i8) -> i8
    "func.return"(%0) : (i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "select_tensor_32"}> ({
  ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xi32>, %arg2: tensor<2xi32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%0) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>, sym_name = "select_tensor_float"}> ({
  ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xf32>, %arg2: tensor<2xf32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<2xi1>, tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()