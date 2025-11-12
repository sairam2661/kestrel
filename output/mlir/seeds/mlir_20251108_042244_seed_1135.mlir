"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() {value = 42 : i32} : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) {predicate = "ne"} : (i32, i32) -> i1
    %2 = "arith.constant"() {value = 64 : i64} : () -> i64
    %3 = "arith.addi"(%arg1, %2) : (i64, i64) -> i64
    %4 = "arith.cmpi"(%arg1, %3) {predicate = "eq"} : (i64, i64) -> i1
    %5 = "arith.addi"(%arg0, %2) : (i32, i64) -> i64
    "scf.if"(%1) ({
      ^bb1(%3: i1):
        %6 = "arith.cmpf"(0.0, 0.0) {predicate = "ne"} : (f32, f32) -> i1
        "scf.if"(%6) ({
          ^bb2(%4: i1):
            "func.return"(%arg0, %5) : (i32, i64) -> ()
        }) : (i1) -> ()
    }) : (i1) -> ()
    "func.return"(%arg0, %arg1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()