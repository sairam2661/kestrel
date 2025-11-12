"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb1(%arg3: index, %arg4: i32):
      %5 = "arith.constant"() <{value = 0 : index}> : () -> index
      %6 = "arith.constant"() <{value = 5 : index}> : () -> index
      %7 = "arith.constant"() <{value = 1 : index}> : () -> index
      %8 = "scf.for"(%5, %6, %7, %arg4) ({
      ^bb2(%arg5: index, %arg6: i32):
        %9 = "arith.addi"(%arg6, %arg1) <{overflowFlags = #arith_overflow_flags}>: (i32, i32) -> i32
        "scf.yield"(%9) : (i32) -> ()
      }) : (index, index, index, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()