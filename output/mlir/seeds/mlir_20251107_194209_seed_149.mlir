"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi16>) -> tensor<2x3xi32>, sym_name = "mixed_tensor_casts"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi16>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    %1 = "arith.addi"(%arg1, %arg1) : (tensor<2x3xi16>, tensor<2x3xi16>) -> tensor<2x3xi16>
    %2 = "arith.extui"(%0) : (tensor<2x3xi8>) -> tensor<2x3xi32>
    %3 = "arith.extsi"(%1) : (tensor<2x3xi16>) -> tensor<2x3xi32>
    %4 = "arith.addi"(%2, %3) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%4) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f64) -> f32, sym_name = "float_conversion"}> ({
  ^bb0(%arg0: f32, %arg1: f64):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.addf"(%arg1, %arg1) : (f64, f64) -> f64
    %2 = "arith.fptrunc"(%1) : (f64) -> f32
    %3 = "arith.addf"(%0, %2) : (f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()