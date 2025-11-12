"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "reduce_and_compute"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4:2 = "tt.reduce"(%arg0, %arg1) <{operation = "add", identity = 0 : i32}> : (i32, i32) -> (i32, i32)
    %5 = "arith.addi"(%4#0, %4#1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %2) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %0, %5) : (i1, i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_reduce"}> ({
  ^bb0(%arg2: i32):
    %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %10:2 = "tt.reduce"(%arg2, %arg2) <{operation = "mul", identity = 1 : i32}> : (i32, i32) -> (i32, i32)
    %11 = "arith.addi"(%10#0, %10#1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "tt.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()