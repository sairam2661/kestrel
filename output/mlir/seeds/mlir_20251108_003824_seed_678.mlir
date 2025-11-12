"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "test_complex_concat"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tosa.const"() <{values = dense<42> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "tosa.concat"(%arg0, %0) <{axis = 0 : i32}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<3x2xi32>
    %2 = "tosa.concat"(%1, %arg1) <{axis = 1 : i32}> : (tensor<3x2xi32>, tensor<2x2xi32>) -> tensor<3x4xi32>
    "func.return"(%2) : (tensor<3x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> tensor<4xi16>, sym_name = "test_i16_const"}> ({
  ^bb0(%arg2: index):
    %1 = "tosa.const"() <{values = dense<[1, 2, 3, 4]> : tensor<4xi16>}> : () -> tensor<4xi16>
    "func.return"(%1) : (tensor<4xi16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3x4xi32>, tensor<2x2xi32>) -> (), sym_name = "test_nested_concat"}> ({
  ^bb0(%arg3: tensor<3x4xi32>, %arg4: tensor<2x2xi32>):
    %0 = "tosa.concat"(%arg3, %arg4) <{axis = 0 : i32}> : (tensor<3x4xi32>, tensor<2x2xi32>) -> tensor<5x4xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()