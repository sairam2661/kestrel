"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, i64, f32), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
      %1 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%arg0, %arg1) : (i32, i64) -> i1
      "scf.if"(%2) ({
        ^bb1(%arg3: i1):
          %3 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
          "scf.yield"() : ()
      }) : () -> ()
      "func.return"(%0, %1) : (i64, f32) -> ()
    }) : () -> ()
}) : () -> ()