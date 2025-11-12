"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xi8>, i32) -> (f32, tensor<4x3xi8>), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: tensor<4x3xi8>, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_f32 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %cmp0 = "arith.cmpi"(%arg1, %c0_i32) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %select0 = "arith.select"(%cmp0, %c1_i32, %arg1) : (i1, i32, i32) -> i32
    %cast0 = "arith.extui"(%select0) : (i32) -> index
    %extract0 = "tensor.extract"(%arg0, %cast0) : (tensor<4x3xi8>, index) -> i8
    %cast1 = "arith.sitofp"(%extract0) : (i8) -> f32
    %add1 = "arith.addf"(%cast1, %c2_f32) : (f32, f32) -> f32
    %insert0 = "tensor.insert"(%add1, %arg0, %cast0) : (f32, tensor<4x3xi8>, index) -> tensor<4x3xi8>
    "func.return"(%add1, %insert0) : (f32, tensor<4x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()