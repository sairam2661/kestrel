"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32, i32, i32), sym_name = "complex_nested_loops"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3:3 = "scf.for"(%0, %arg0, %1, %0, %0, %0) ({
    ^bb0(%arg1: i32, %arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "scf.for"(%0, %arg2, %1, %0, %0) ({
      ^bb0(%arg4: i32, %arg5: i32):
        %6 = "arith.addi"(%arg4, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %7 = "arith.muli"(%arg4, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %8 = "arith.remsi"(%arg4, %6) : (i32, i32) -> i32
        "scf.yield"(%6, %7, %8) : (i32, i32, i32) -> ()
      }) : (i32, i32, i32, i32, i32) -> (i32, i32, i32)
      "scf.yield"(%4, %5#1, %5#2) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32) -> (i32, i32, i32)
    "tt.return"(%3#0, %3#1, %3#2) : (i32, i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "conditional_sum"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "scf.for"(%0, %arg0, %1, %0) ({
    ^bb0(%arg1: i32, %arg2: i32):
      %3 = "arith.cmpi"(%arg1, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
      "scf.if"(%3) ({
        %4 = "arith.addi"(%arg2, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }, {
        "scf.yield"(%arg2) : (i32) -> ()
      }) : (i32) -> ()
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "tt.return"(%2#0) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!tt_ptri32) -> (!tt_ptri32), sym_name = "addptr_test"}> ({
  ^bb0(%arg0: !tt_ptri32):
    %0 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %1 = "tt.addptr"(%arg0, %0) : (!tt_ptri32, i32) -> !tt_ptri32
    %2 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %3 = "tt.addptr"(%arg0, %2) : (!tt_ptri32, i32) -> !tt_ptri32
    "tt.return"(%3) : (!tt_ptri32) -> ()
  }) : () -> ()
}) : () -> ()