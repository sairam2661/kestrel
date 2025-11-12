"builtin.module"() ({
  "func.func"() <{function_type = (index, i32, f32) -> (i32, f32), sym_name = "complexMixedTypes"}> ({
  ^bb0(%arg0: index, %arg1: i32, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (index, i32) -> i32
    %1 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg1, %arg0) <{predicate = "eq"}> : (i32, index) -> i1
    "scf.if"(%2) ({
    ^bb0:
      %3 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {
    } : (i1) -> ()
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()