"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "unusual_complexity"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    "scf.if"(%0) ({
    ^bb0:
      %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }, {
    ^bb0:
      %2 = "arith.addf"(%arg0, %arg0) : (i32, i32) -> f32
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()