"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_complex", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb1(%arg2: index, %arg3: i32):
      %4 = "arith.constant"() <{value = 0 : index}> : () -> index
      %5 = "arith.constant"() <{value = 5 : index}> : () -> index
      %6 = "arith.constant"() <{value = 1 : index}> : () -> index
      %7 = "scf.for"(%4, %5, %6, %arg3) ({
      ^bb2(%arg4: index, %arg5: i32):
        %8 = "arith.addi"(%arg5, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%arg5, %8) : (i32, i32) -> ()
      }) : (index, index, index, i32) -> (i32, i32)
      "scf.yield"(%arg3, %7#1) : (i32, i32) -> ()
    }) : (index, index, index, i32) -> (i32, i32)
    "tt.return"(%3#0, %3#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()