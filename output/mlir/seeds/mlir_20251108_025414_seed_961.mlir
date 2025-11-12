"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, i1) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: i1):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
    ^bb0:
      %3 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.yield"(%3) : (f32) -> ()
    }) {
    } : (i1) -> (f32)
    %4 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %0, "ne") : (i32, i32) -> i1
    %6 = "scf.if"(%5) ({
    ^bb0:
      %7 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      "scf.yield"(%7) : (f32) -> ()
    }) {
    } : (i1) -> (f32)
    "func.return"(%4, %6) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()