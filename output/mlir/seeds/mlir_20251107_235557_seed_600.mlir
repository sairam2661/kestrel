"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x4xi16>) -> (i32, f32, tensor<2x4xi16>, tensor<2x4xi32>), sym_name = "mixed_complex"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x4xi16>):
    %0 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"("oeq", %arg1, %0) : (f32, f32) -> i1
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.subi"(%arg0, %2) : (i32, i32) -> i32
    %4 = "tosa.cast"(%arg2) : (tensor<2x4xi16>) -> tensor<2x4xi32>
    "func.return"(%arg0, %0, %arg2, %4) : (i32, f32, tensor<2x4xi16>, tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()