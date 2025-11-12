"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x3xi8>) -> (i32, f32, tensor<2x3xi8>), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x3xi8>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%arg1, %arg1, "eq") : (f32, f32) -> i1
    %4 = "tosa.identity"(%arg2) : (tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%0, %1, %4) : (i32, f32, tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()