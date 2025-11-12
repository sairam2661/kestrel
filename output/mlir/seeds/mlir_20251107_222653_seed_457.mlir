"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> () , sym_name = "mixed_arith_types"}> ({
  ^bb0(%arg0 : i32, %arg1 : i64):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 456 : i64}> : () -> i64
    %3 = "arith.addi"(%arg1, %2) : (i64, i64) -> i64
    %4 = "arith.cmpi"("eq", %1, %arg0) : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      "arith.addi"(%1, %3) : (i32, i64) -> i32
      "scf.yield"() : () -> ()
    }, {
      "arith.addi"(%0, %3) : (i32, i64) -> i32
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()