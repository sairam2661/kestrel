"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4:4 = "scf.for"(%0, %arg0, %arg1, %0, %0, %0, %0) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32):
      %6 = "arith.addi"(%arg5, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "arith.xori"(%arg6, %2) : (i32, i32) -> i32
      %8 = "arith.cmpi"(%6, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %9 = "arith.select"(%8, %7, %arg6) : (i1, i32, i32) -> i32
      %10 = "arith.select"(%8, %1, %6) : (i1, i32, i32) -> i32
      %11 = "arith.xori"(%arg4, %2) : (i32, i32) -> i32
      %12 = "arith.xori"(%arg3, %2) : (i32, i32) -> i32
      "scf.yield"(%10, %9, %11, %12) : (i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)
    %13 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %14 = "arith.xori"(%arg0, %2) : (i32, i32) -> i32
    "scf.if"(%14) ({
      "scf.yield"(%13, %14) : (i32, i32) -> ()
    }, {
      "scf.yield"(%arg0, %arg1) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    "tt.return"(%13, %14) : (i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %2:2 = "scf.for"(%0, %arg0, %1, %0, %0) ({
    ^bb0(%arg1: i32, %arg2: i32, %arg3: i32):
      %4:2 = "scf.for"(%0, %arg1, %1, %0, %0) ({
      ^bb0(%arg4: i32, %arg5: i32):
        %6 = "arith.addi"(%arg5, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (i32, i32, i32, i32) -> (i32)
      "scf.yield"(%4#0, %4#1) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32)
    "tt.return"(%2#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()