"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_control_flow", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
      %5 = "arith.cmpi"(%arg2, %1, "slt") : (index, index) -> i1
      "scf.if"(%5) ({
      ^bb0:
        "scf.yield"(%arg2) : (index) -> ()
      }) {
      } : (i1) -> ()
      "scf.yield"(%4) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()