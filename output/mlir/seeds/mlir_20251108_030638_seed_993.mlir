"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32) -> f32, sym_name = "complex_math_function"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
    %const_0 = "llvm.mlir.constant"() {value = 0.0 : f32} : () -> f32
    %cmp_le = "arith.cmpf"(%arg0, %arg1, "oless") : (f32, f32) -> i1
    %sel = "arith.select"(%cmp_le, %arg1, %arg0) : (i1, f32, f32) -> f32
    %add = "arith.addf"(%sel, %arg2) : (f32, f32) -> f32
    %cmp_gt = "arith.cmpf"(%add, %const_0, "ogreater") : (f32, f32) -> i1
    %result = "arith.select"(%cmp_gt, %add, %const_0) : (i1, f32, f32) -> f32
    "func.return"(%result) : (f32) -> ()
  }) : () -> ()
}) : () -> ()