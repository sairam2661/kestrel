"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, memref<2x3xf32>) -> (f32, memref<2x3xf32>), sym_name = "mixed_dialect_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: memref<2x3xf32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "tosa.const"() <{value = 2.71 : f32}> : () -> f32
    %5 = "arith.cmpf"(%3, %4, "oeq") : (f32, f32) -> i1
    %6:2 = "scf.if"(%5) ({
    ^bb0:
      %7 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
      "scf.yield"(%7, %arg2) : (f32, memref<2x3xf32>) -> ()
    }) {
    } : (i1) -> (f32, memref<2x3xf32>)
    "func.return"(%6#0, %6#1) : (f32, memref<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()