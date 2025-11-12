"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, f32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %cst1_i32 = "tosa.const"() <{value = 1 : i32}> : () -> i32
    %cst2_f32 = "tosa.const"() <{value = 2.0 : f32}> : () -> f32
    %add_i32 = "arith.addi"(%arg0, %cst1_i32) : (i32, i32) -> i32
    %add_f32 = "arith.addf"(%arg1, %cst2_f32) : (f32, f32) -> f32
    %cmp_i32 = "arith.cmpi"("slt", %add_i32, %cst1_i32) : (i32, i32) -> i1
    "scf.if"(%cmp_i32) ({
      %0 = "arith.addi"(%add_i32, %cst1_i32) : (i32, i32) -> i32
      "scf.yield"(%0) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%add_i32, %add_f32, %add_f32) : (i32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()