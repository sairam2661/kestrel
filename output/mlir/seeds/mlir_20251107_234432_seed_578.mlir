"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32, tensor<2x3xi8>) -> (f32, i32), sym_name = "test_compound_function"}> ({
    ^bb0(%arg0: f32, %arg1: i32, %arg2: tensor<2x3xi8>):
      %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
      %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
      %2 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
      %3 = "tosa.negate"(%arg2) : (tensor<2x3xi8>) -> tensor<2x3xi8>
      "func.return"(%0, %2) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()