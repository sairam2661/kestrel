"
builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_loops_and_ifs"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2:3 = "scf.for"(%1, %arg0, %0, %1, %1, %1) ({
    ^bb0(%arg1: i32, %arg2: i32, %arg3: i32):
      %3 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_OVERFLOWFLAGS}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %5 = "scf.if"(%4) ({
        %6 = "arith.addi"(%arg1, %3) <{overflowFlags = #arith_OVERFLOWFLAGS}> : (i32, i32) -> i32
        "scf.yield"(%6, %3) : (i32, i32) -> ()
      }, {
        %6 = "arith.subi"(%arg1, %3) <{overflowFlags = #arith_OVERFLOWFLAGS}> : (i32, i32) -> i32
        "scf.yield"(%6, %3) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "scf.yield"(%5#0, %5#1, %arg3) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32) -> (i32, i32, i32)
    %7:3 = "scf.for"(%1, %arg0, %0, %1, %1, %1) ({
    ^bb0(%arg4: i32, %arg5: i32, %arg6: i32):
      %8 = "arith.mul"(%arg4, %arg5) <{overflowFlags = #arith_OVERFLOWFLAGS}> : (i32, i32) -> i32
      %9 = "arith.cmpi"(%8, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %10 = "scf.if"(%9) ({
        %11 = "arith.addi"(%arg4, %8) <{overflowFlags = #arith_OVERFLOWFLAGS}> : (i32, i32) -> i32
        "scf.yield"(%11, %8) : (i32, i32) -> ()
      }, {
        %11 = "arith.subi"(%arg4, %8) <{overflowFlags = #arith_OVERFLOWFLAGS}> : (i32, i32) -> i32
        "scf.yield"(%11, %8) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "scf.yield"(%10#0, %10#1, %arg6) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32) -> (i32, i32, i32)
    %12 = "arith.addi"(%2#0, %7#0) <{overflowFlags = #arith_OVERFLOWFLAGS}> : (i32, i32) -> i32
    "tt.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()