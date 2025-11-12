"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixedArithOps"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.cmpi"("eq", %arg1, %arg1) : (i32, i32) -> i1
    %2 = "arith.cmpf"("ne", %0, %0) : (f32, f32) -> i1
    %3 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    "func.return"(%0, %3) : (f32, i32) -> ()
  }) : () -> (f32, i32)
}) : () -> ()