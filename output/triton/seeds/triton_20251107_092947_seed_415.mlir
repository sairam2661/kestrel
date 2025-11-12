"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.xori"(%arg0, %1) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%2, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
    ^bb0:
      %6 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %7 = "arith.addi"(%arg0, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %8 = "arith.xori"(%arg0, %5) : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "nested_loops"}> ({
  ^bb0(%arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "scf.for"(%0, %arg1, %1, %0, %0) ({
    ^bb0(%arg3: i32, %arg4: i32):
      %3 = "scf.for"(%0, %arg2, %1, %0, %0) ({
      ^bb0(%arg5: i32, %arg6: i32):
        %7 = "arith.addi"(%arg3, %arg5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32, i32, i32, i32, i32) -> (i32)
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32)
    "tt.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()