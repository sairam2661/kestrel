"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_reduce", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "arith.addi"(%arg3, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"(%arg2, %4) : (index, i32) -> ()
    }) : (index, index, index, i32) -> i32
    %5 = "tt.reduce"() <{identity = 0 : i32, operation = "add"}> ({
    ^bb0(%arg4: i32, %arg5: i32):
      %6 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()