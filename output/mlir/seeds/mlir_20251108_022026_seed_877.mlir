"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %3 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    %4 = "arith.cmpi"(%0, %arg2) <{predicate = "sgt"}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.subi"(%arg2, %arg0) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      %7 = "arith.divi"(%arg2, %arg0) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()