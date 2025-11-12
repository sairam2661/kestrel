"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0, "sgt") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
      %4 = "arith.addf"(%arg1, %3) : (f32, f32) -> f32
      "scf.yield"(%4) : (f32) -> ()
    }, {
      %5 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
      %6 = "arith.subf"(%arg1, %5) : (f32, f32) -> f32
      "scf.yield"(%6) : (f32) -> ()
    }) : (i1) -> f32
    %7 = "arith.cmpi"(%2, %0, "slt") : (f32, i32) -> i1
    %8 = "scf.if"(%7) ({
      "scf.yield"(%0) : (i32) -> ()
    }, {
      "scf.yield"(%arg0) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()