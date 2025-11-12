"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, i32), sym_name = "complex_control_flow_mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg0, %0) <{predicate = "eq"}> : (i32, i32) -> i1
      %2:2 = "scf.if"(%1) ({
        %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
        %4 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
        "scf.yield"(%3, %4) : (i32, f32) -> ()
      }, {
        %5 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
        %6 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
        "scf.yield"(%5, %6) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
      "func.return"(%2#0, %2#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()