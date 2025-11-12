"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_func"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, %arg1, "eq") : (f32, f32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "llvm.return"(%arg0, %2) : (i32, f32) -> ()
  }) : (i32, f32) -> (i32, f32)
}) : () -> ()