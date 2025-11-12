"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_f32 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
      %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %c2_f32) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%0, %c1_i32, "sgt") : (i32, i32) -> i1
      %3 = "arith.cmpf"(%1, %c2_f32, "oeq") : (f32, f32) -> i1
      "scf.if"(%2) ({
        ^bb1(%4: i1):
          %5 = "arith.addi"(%0, %c1_i32) : (i32, i32) -> i32
          "scf.yield"(%5) : (i32) -> i32
      }) {
        "scf.yield"=-1 : i32
      } : (i1) -> i32
      "scf.if"(%3) ({
        ^bb2(%6: i1):
          %7 = "arith.addf"(%1, %c2_f32) : (f32, f32) -> f32
          "scf.yield"(%7) : (f32) -> f32
      }) {
        "scf.yield"=-2.0 : f32
      } : (i1) -> f32
      "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()