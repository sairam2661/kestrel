"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_nested_loops", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 10 : index}> : () -> index
      %2 = "arith.constant"() <{value = 1 : index}> : () -> index
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %4:2 = "scf.for"(%0, %1, %2, %arg0, %3) ({
        ^bb0(%arg2: index, %arg3: i32, %arg4: i32):
          %5 = "arith.addi"(%arg4, %arg3) <{overflowFlags = #arith_overflow
           }>: (i32, i32) -> i32
          %6 = "arith.constant"() <{value = 0 : index}> : () -> index
          %7 = "arith.constant"() <{value = 5 : index}> : () -> index
          %8 = "arith.constant"() <{value = 1 : index}> : () -> index
          %9 = "scf.for"(%6, %7, %8, %arg4) ({
            ^bb0(%arg5: index, %arg6: i32):
              %10 = "arith.xori"(%arg6, %arg5) <{overflowFlags = #arith_overflow
              }> : (i32, index) -> i32
              "scf.yield"(%arg6, %10) : (i32, i32) -> ()
          }) : (index, index, index, i32) -> i32
          "scf.yield"(%arg0, %9) : (i32, i32) -> ()
      }) : (index, index, index, i32, i32) -> (i32, i32)
      "tt.return"(%4#0, %4#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()