"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "mul"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "bar"}> ({
  ^bb0(%arg0: i32):
    "tt.call"(%arg0) <{callee = @mul}> : (i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "foo"}> ({
  ^bb0(%arg0: i32):
    "tt.call"(%arg0) <{callee = @mul}> : (i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "call_graph"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "tt.call"(%1) <{callee = @foo}> : (i32) -> ()
    %2 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %3 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "tt.call"(%3) <{callee = @bar}> : (i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

