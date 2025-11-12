"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complexControlFlow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.cmpi"(%arg0, %arg1, "gt") : (i32, i64) -> i1
    "scf.if"(%0) ({
      ^bb1:
        %1 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
        "scf.if"(%1) ({
          ^bb2:
            %2 = "arith.addf"(%1, %1) : (i64) -> f64
            "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
    }) : () -> ()
    %3 = "arith.cmpi"(%arg0, %arg1, "eq") : (i32, i64) -> i1
    "scf.if"(%3) ({
      ^bb3:
        %4 = "arith.addf"(%arg0, %arg1) : (i32, i64) -> f64
        "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0, %arg1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()