"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "scf.if"(%0) ({
      %3 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%3, %1) : (i32, f32) -> ()
    }, {
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%3, %1) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%2#0, %2#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()