"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "tosa.const"() <{values = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "tosa.mul"(%0, %2) : (i32, tensor<1xi32>) -> i32
    %4 = "tosa.const"() <{values = dense<2.0> : tensor<1xf32>}> : () -> tensor<1xf32>
    %5 = "tosa.mul"(%1, %4) : (f32, tensor<1xf32>) -> f32
    "scf.if"(%5) ({
    ^bb1(%arg2: f32):
      %6 = "arith.cmpf"("oge", %arg2, %5) : (f32, f32) -> i1
      "scf.yield"(%6) : (i1) -> ()
    }, {
    ^bb2():
      "scf.yield"() : () -> ()
    }) : (i1) -> (i1)
    "func.return"(%3, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()