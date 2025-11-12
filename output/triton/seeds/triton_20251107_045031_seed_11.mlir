"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "fuzz_mix"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.xori"(%arg0, %1) : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4:2 = "scf.if"(%3) ({
      ^bb0:
        %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> (i32)
    %6 = "arith.muli"(%4#0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "scf.for"(%4#0, %6, %1, %4#0) ({
    ^bb0(%indvar: i32, %acc: i32):
      %8 = "arith.addi"(%acc, %indvar) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i32, i32) -> (i32)
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()