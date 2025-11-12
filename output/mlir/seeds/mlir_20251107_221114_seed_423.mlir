"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "scf.if"(%arg0) {
        "arith.addi" = "arith.addi" : (i32, i32) -> i32
        } : (i32) -> (i32)
      "scf.if"(%arg0) {
        "arith.addf" = "arith.addf" : (f32, f32) -> f32
        } : (i32) -> (f32)
      %3 = "arith.cmpi"("ne", %arg0, %0) : (i32, i32) -> i1
      "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()