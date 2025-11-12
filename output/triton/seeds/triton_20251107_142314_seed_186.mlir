"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4:2 = "scf.if"(%arg0) ({
    ^bb0:
      %5 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %6 = "arith.cmpi"(%arg0, %5, "slt") : (i32, i32) -> i1
      "scf.yield"(%6, %5) : (i1, i32) -> ()
    }, {
    ^bb1:
      %7 = "arith.muli"(%arg0, %3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"(%3, %7) : (i32, i32) -> ()
    }) : (i1, i32, i32) -> (i1, i32)
    %8:2 = "scf.for"(%0, %1, %2, %4#0) ({
    ^bb0(%arg1: index, %arg2: i32):
      %9 = "arith.cmpi"(%arg1, %4#1, "slt") : (index, i32) -> i1
      %10 = "arith.xori"(%arg1, %4#1) : (index, i32) -> i32
      "scf.yield"(%arg2, %10) : (i32, i32) -> ()
    }) : (index, index, index, i32, i32) -> (i32, i32)
    "tt.return"(%8#0, %8#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()