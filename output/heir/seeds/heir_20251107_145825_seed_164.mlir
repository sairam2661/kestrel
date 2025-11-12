"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_nested_control_flow"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %2:2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %5:2 = "scf.if"(%4) ({
        %6 = "arith.addi"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%6, %0) : (i32, i32) -> ()
      }, {
        %7 = "arith.subi"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%7, %0) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "scf.yield"(%5#0, %5#1) : (i32, i32) -> ()
    }, {
      %8 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %9 = "arith.cmpi"(%8, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %10:2 = "scf.if"(%9) ({
        %11 = "arith.addi"(%8, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%11, %0) : (i32, i32) -> ()
      }, {
        %12 = "arith.subi"(%8, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%12, %0) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "scf.yield"(%10#0, %10#1) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    "func.return"(%2#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()