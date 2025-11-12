"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb1(%arg3: index, %arg4: i32):
      %5 = "arith.addi"(%arg4, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.divsi"(%5, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "arith.cmpi"(%6, %arg0) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %8 = "scf.if"(%7) ({
        "scf.yield"(%arg3) : (index) -> ()
      }, {
        "scf.yield"(%arg3) : (index) -> ()
      }) : (i1) -> index
      "scf.yield"(%8, %5) : (index, i32) -> ()
    }) : (index, index, index, i32) -> (index, i32)
    "tt.return"(%3#0, %3#1) : (index, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()