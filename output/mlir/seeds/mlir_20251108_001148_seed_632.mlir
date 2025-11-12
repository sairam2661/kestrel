"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedOps"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"("eq", %0, %arg0) : (i32, i32) -> i1
    %2 = "arith.mulf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "arith.cmpf"("oeq", %2, %arg1) : (f32, f32) -> i1
    %4 = "arith.select"(%1, %0, %arg0) : (i1, i32, i32) -> i32
    %5 = "arith.select"(%3, %2, %arg1) : (i1, f32, f32) -> f32
    "func.return"(%4, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()