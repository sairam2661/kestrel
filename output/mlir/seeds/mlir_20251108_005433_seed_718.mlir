#map = affine_map<(d0, d1)[s0] -> (s0, d0 * 2 + d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, i8, f32) -> (i32, f32), sym_name = "complex_function"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: i8, %arg3: f32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7.5 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg3, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%arg0, %2, "sgt") : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
    ^bb1:
      %6 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %7 = "arith.addi"(%arg0, %6) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %8 = "arith.cmpf"(%arg3, %3, "sgt") : (f32, f32) -> i1
    %9 = "scf.if"(%8) ({
    ^bb1:
      %10 = "arith.constant"() <{value = 20.0 : f32}> : () -> f32
      %11 = "arith.addf"(%arg3, %10) : (f32, f32) -> f32
      "scf.yield"(%11) : (f32) -> ()
    }) {
    } : (i1) -> (f32)
    "func.return"(%5, %9) : (i32, f32) -> ()
  }) : () -> (i32, f32)
}) : () -> ()