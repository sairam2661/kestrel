"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -10 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %0) : (i32, i32) -> i32
    %5 = "arith.xori"(%4, %1) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %5, %0) : (i1, i32, i32) -> i32
    %8 = "arith.divsi"(%7, %0) : (i32, i32) -> i32
    %9 = "arith.remsi"(%8, %1) : (i32, i32) -> i32
    %10 = "scf.if"(%6) ({
      %11 = "arith.addi"(%9, %0) : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }, {
      %12 = "arith.subi"(%9, %1) : (i32, i32) -> i32
      "scf.yield"(%12) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()