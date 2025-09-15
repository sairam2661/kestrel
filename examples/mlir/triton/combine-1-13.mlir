"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "yield_outside_loop1", sym_visibility = "public"}> ({
  ^bb0(%arg5: i32, %arg6: i32):
    %6 = "arith.constant"() <{value = 0 : index}> : () -> index
    %7 = "arith.constant"() <{value = 5 : index}> : () -> index
    %8 = "arith.constant"() <{value = 1 : index}> : () -> index
    %9 = "scf.for"(%6, %7, %8, %arg5) ({
    ^bb0(%arg7: index, %arg8: i32):
      "scf.yield"(%arg6) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "yield_outside_loop2", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4:2 = "scf.for"(%0, %1, %2, %arg0, %3) ({
    ^bb0(%arg2: index, %arg3: i32, %arg4: i32):
      %5 = "arith.addi"(%arg4, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%arg0, %5) : (i32, i32) -> ()
    }) : (index, index, index, i32, i32) -> (i32, i32)
    "tt.return"(%4#0, %4#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()

