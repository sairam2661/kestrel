"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.constant"() <{value = 42.0 : f32}> : () -> f32
      %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %3 = "arith.cmpi"(%0, %arg0, "eq") : (i32, i32) -> i1
      %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %5 = "arith.addi"(%4, %arg0) : (i32, i32) -> i32
      "scf.if"(%3) ({
        "scf.yield"() : () -> ()
      }) {
        "scf.yield"="%6" : () -> i32
      } : (i1) -> (i32)
      "func.return"(%0, %2) : (i32, f32) -> ()
    }) : () -> ()
}) : () -> ()