"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "cross_dialect_complexity"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() {value = 0 : i32} : () -> i32
    %cmp = "arith.cmpi"(%arg0, %c0_i32) {predicate = "eq"} : (i32, i32) -> i1
    "scf.if"(%cmp) ({
      ^if1:
        %3 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> i32
    }) {
      "scf.yield" = "scf.yield" : () -> i32
    } : (i1) -> i32
    "func.return"() : () -> ()
  }) : () -> i32
}) : () -> ()