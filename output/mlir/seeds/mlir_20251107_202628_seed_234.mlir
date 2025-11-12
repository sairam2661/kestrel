"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflowModes} > : (i32, i32) -> i32

    "scf.if"(%2) ({
      ^bb0:
        %3 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
        "scf.yield"(%3) : (i1) -> i1
    }) : (i1) -> (i1)  ^bb1(%4: i1):
      %5 = "arith.cmpi"(%0, %1, "sle") : (i32, i32) -> i1
      "scf.yield"(%5) : (i1) -> i1
    ^bb2(%6: i1):
      %7 = "arith.cmpi"(%0, %1, "sge") : (i32, i32) -> i1
      "scf.yield"(%7) : (i1) -> i1

    %8 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %9 = "arith.cmpi"(%8, %2, "eq") : (i32, i32) -> i1
    "scf.if"(%9) ({
      ^bb3:
        %10 = "arith.constant"() <{value = 30 : i32}> : () -> i32
        "scf.yield"(%10) : (i32) -> i32
    }) : (i32) -> (i32) ^bb4(%11: i32):
      %12 = "arith.constant"() <{value = 40 : i32}> : () -> i32
      "scf.yield"(%12) : (i32) -> i32

    "func.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()