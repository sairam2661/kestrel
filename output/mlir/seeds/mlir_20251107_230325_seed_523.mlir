"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, f32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%arg1, %0) <{predicate = "sgt"}> : (i64, i32) -> i1
    %3 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %4 = "arith.addf"(%3, %3) : (f32, f32) -> f32
    %5 = "scf.if"(%2) ({
    ^bb0:
      %6 = "arith.addi"(%1, %1) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
    ^bb0:
      %7 = "arith.subi"(%1, %1) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1, i32) -> i32
    "func.return"(%5, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()