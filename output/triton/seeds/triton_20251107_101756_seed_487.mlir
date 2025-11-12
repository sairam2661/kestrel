"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") <{result = false}> : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%arg1, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg2) ({
    ^bb0(%arg4: index, %arg5: i32):
      %6 = "arith.constant"() <{value = 0 : index}> : () -> index
      %7 = "arith.constant"() <{value = 5 : index}> : () -> index
      %8 = "arith.constant"() <{value = 1 : index}> : () -> index
      %9 = "scf.for"(%6, %7, %8, %arg3) ({
      ^bb0(%arg6: index, %arg7: i32):
        "scf.yield"(%arg5) : (i32) -> ()
      }) : (index, index, index, i32) -> i32
      "scf.yield"(%arg5) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()