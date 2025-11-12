"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_if_then_else", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    "scf.if"(%0) ({
      %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }, {
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      "scf.for"(%0, %1, %2, %arg3) ({
      ^bb0(%arg4: index, %arg5: i32):
        "scf.yield"(%arg5) : (i32) -> ()
      }) : (index, index, index, i32) -> i32
      "scf.yield"(%arg3) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()