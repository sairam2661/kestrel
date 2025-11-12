"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_loops_and_selects"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4:2 = "scf.for"(%1, %arg0, %2, %1, %1, %1, %1) ({
    ^bb0(%arg1: i32, %arg2: i32, %arg3: i32):
      %5:2 = "scf.for"(%1, %arg1, %2, %1, %1, %1, %1) ({
      ^bb0(%arg4: i32, %arg5: i32, %arg6: i32):
        %7 = "arith.cmpi"(%arg4, %arg5) <{predicate = 0 : i64}> : (i32, i32) -> i1
        %8 = "arith.select"(%7, %3, %arg4) : (i1, i32, i32) -> i32
        "scf.yield"(%8, %arg6) : (i32, i32) -> ()
      }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32)
      %9 = "arith.xori"(%arg2, %5#0) : (i32, i32) -> i32
      "scf.yield"(%9, %arg3) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32)
    %10 = "arith.addi"(%4#0, %arg0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()