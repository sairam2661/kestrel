"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, i64) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg2) <{predicate = "eq"}> : (i32, i64) -> i1
    %2 = "arith.cmpf"(%arg1, %arg1) <{predicate = "ne"}> : (f32, f32) -> i1
    %3 = "scf.if"(%1) ({
    ^bb0:
      %4 = "arith.muli"(%arg0, %arg2) : (i32, i64) -> i64
      "scf.yield"(%4) : (i64) -> ()
    }) {
    } : (i1) -> (i64)
    %5 = "scf.if"(%2) ({
    ^bb0:
      %6 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.yield"(%6) : (f32) -> ()
    }) {
    } : (i1) -> (f32)
    "func.return"(%0, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()