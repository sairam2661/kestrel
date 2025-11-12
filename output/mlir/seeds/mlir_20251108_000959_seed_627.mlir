"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> (i32), sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: index, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
      %2 = "arith.cmpi"(%arg0, %1, "uge") : (index, i32) -> i1
      %3 = "scf.if"(%2) ({
        ^bb1(%cond: i1):
          %4 = "arith.constant"() <{value = 100 : i32}> : () -> i32
          "scf.yield"(%4) : (i32) -> ()
      }, {
        ^bb2(%cond: i1):
          %5 = "arith.constant"() <{value = 200 : i32}> : () -> i32
          "scf.yield"(%5) : (i32) -> ()
      }) : (i1) -> i32
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()