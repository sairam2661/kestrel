"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "mixed_ops_example"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0) <{predicate = "eq" : i64}> : (i32, i32) -> i1
    %3 = "arith.xori"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.select"(%2, %3, %1) : (i1, i32, i32) -> i32
    %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()