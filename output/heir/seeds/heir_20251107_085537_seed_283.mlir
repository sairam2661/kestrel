"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "vector_select_with_control"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xi32>, %arg2: tensor<4xi32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi64>, tensor<2xi64>) -> tensor<2xi64>, sym_name = "large_vector_select"}> ({
  ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xi64>, %arg2: tensor<2xi64>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<2xi1>, tensor<2xi64>, tensor<2xi64>) -> tensor<2xi64>
    "func.return"(%0) : (tensor<2xi64>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>, sym_name = "vector_select_float"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xf32>, %arg2: tensor<4xf32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<4xi1>, tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi1>, tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "vector_select_with_odd_dim"}> ({
  ^bb0(%arg0: tensor<3xi1>, %arg1: tensor<3xi32>, %arg2: tensor<3xi32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<3xi1>, tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5xi1>, tensor<5xi16>, tensor<5xi16>) -> tensor<5xi16>, sym_name = "vector_select_with_large_elem"}> ({
  ^bb0(%arg0: tensor<5xi1>, %arg1: tensor<5xi16>, %arg2: tensor<5xi16>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<5xi1>, tensor<5xi16>, tensor<5xi16>) -> tensor<5xi16>
    "func.return"(%0) : (tensor<5xi16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi8>, tensor<2xi8>) -> tensor<2xi8>, sym_name = "vector_select_with_small_elem"}> ({
  ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xi8>, %arg2: tensor<2xi8>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<2xi1>, tensor<2xi8>, tensor<2xi8>) -> tensor<2xi8>
    "func.return"(%0) : (tensor<2xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<6xi1>, tensor<6xi32>, tensor<6xi32>) -> tensor<6xi32>, sym_name = "vector_select_with_even_dim"}> ({
  ^bb0(%arg0: tensor<6xi1>, %arg1: tensor<6xi32>, %arg2: tensor<6xi32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<6xi1>, tensor<6xi32>, tensor<6xi32>) -> tensor<6xi32>
    "func.return"(%0) : (tensor<6xi32>) -> ()
  }) : () -> ()
}) : () -> ()