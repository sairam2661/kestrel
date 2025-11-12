"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith_and_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb1:  %2 = "arith.constant"() <{value = 1 : i32}> : i32
            "scf.yield"(%2) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()