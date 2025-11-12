"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> f32, sym_name = "complex_nested_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "scf.if"(%1) ({
    ^bb0:
      %5 = "arith.addf"(%3, %2) : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }, {
    ^bb1:
      %6 = "arith.subf"(%3, %2) : (f32, f32) -> f32
      "scf.yield"(%6) : (f32) -> ()
    }) : (f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()