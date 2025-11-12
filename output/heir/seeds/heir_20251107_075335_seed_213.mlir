"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.muli"(%arg2, %0) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.addi"(%2, %3) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      %7 = "arith.subi"(%3, %2) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1) -> i32
    %8 = "arith.select"(%4, %5, %2) : (i1, i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()