"builtin.module"() ({
  "tt.func"() <{function_type = () -> (i32, i32), sym_name = "complex_logic"}> ({
    %0 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 32 : i32}> : () -> i32

    %3 = "arith.divsi"(%0, %1) : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %2) : (i32, i32) -> i32
    %5 = "arith.xori"(%4, %2) : (i32, i32) -> i32
    %6 = "arith.addi"(%5, %2) : (i32, i32) -> i32

    %7 = "arith.cmpi"(%0, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %8 = "arith.select"(%7, %6, %3) : (i1, i32, i32) -> i32

    %9 = "scf.if"(%7) ({
      %10 = "arith.muli"(%6, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%10) : (i32) -> ()
    }, {
      %11 = "arith.remsi"(%3, %2) : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }) : (i1) -> i32

    "tt.return"(%8, %9) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()