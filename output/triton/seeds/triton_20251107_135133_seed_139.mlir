"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_reduction", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %1 = "tt.make_range"(%arg0, %arg1) : (i32, i32) -> !ttg_range
    %2:2 = "tt.reduce"(%1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflowFlags}>() : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (!ttg_range, i32) -> i32
    "tt.return"(%2#1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()