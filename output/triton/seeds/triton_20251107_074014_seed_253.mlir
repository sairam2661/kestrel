"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_control_flow", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3:2 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg3: index, %arg4: i32):
      %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %6:2 = "scf.if"(%arg4) ({
        "scf.yield"(%arg4) : (i32) -> ()
      }, {
        %7 = "arith.addi"(%arg4, %5) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32) -> (i32)
      "scf.yield"(%arg3, %6#0) : (index, i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%3#1) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()