"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops_and_conditions"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3:3 = "scf.for"(%0, %arg0, %1, %0, %0, %0) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %4 = "arith.addi"(%arg3, %2) <{overflowFlags = #arithOverflownone}> : (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      "scf.if"(%5) ({
        ^bb0:
          %6 = "arith.mul"(%arg3, %2) <{overflowFlags = #arithOverflownone}> : (i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> ()
      }) {
        "scf.yield"  = () -> ()
      }
      : (i32) -> ()
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32, i32)
    %7 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithOverflownone}> : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()

  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "nested_calls"}> ({
  ^bb0(%arg2: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2:2 = "tt.call"(%arg2) <{callee = @nested_loops_and_conditions}> : (i32) -> (i32, i32)
    %3 = "arith.addi"(%2#0, %2#1) <{overflowFlags = #arithOverflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%2#0, %2#1) <{overflowFlags = #arithOverflownone}> : (i32, i32) -> i32
    "tt.return"(%3, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()