"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_int_types"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1234567890123456789 : i64}> : () -> i64
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) : (i64, i64) -> i64
      "scf.if"(%2) <{sym_name = "if_block"}> ({
        ^bb1(%arg2: i32):
          %4 = "arith.cmpi"(%arg2, %0, "eq") : (i32, i32) -> i1
          "scf.yield"(%4) : (i1) -> ()
      }) : (i32) -> (i1) attributes
      .result0 : i1
      "func.return"(%2, %3) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()