"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_example"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflowFlagsAttributes}> : (i32, i32) -> i32
      %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.if"(%2) ({
        ^bb1(%3: f32):
          %4 = "arith.cmpf"("oeq", %3, %3) : (f32, f32) -> i1
          "scf.yield"(%4) : (i1) -> ()
      }) : (i1) -> ()
      "func.return"(%1, %2) : (i32, f32) -> ()
    }) : () -> ()
}) : () -> ()