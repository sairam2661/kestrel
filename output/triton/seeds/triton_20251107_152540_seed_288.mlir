"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}, {tt.divisibility = 8 : i32}, {}], function_type = (i32, i32) -> (), sym_name = "nested_loops_and_calls"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    "scf.for"(%0, %arg1, %1) ({
    ^bb0(%arg2: i32):
      %2 = "arith.addi"(%arg2, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.if"(%2) ({
      ^bb0:
        %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
        %4 = "arith.constant"() <{value = 8 : i32}> : () -> i32
        "scf.for"(%3, %4, %1) ({
        ^bb0(%arg3: i32):
          %5 = "arith.subi"(%arg3, %4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
          "tt.call"(%5) <{callee = @dummy_func}> : (i32) -> ()
          "scf.yield"() : () -> ()
        }) : (i32, i32, i32) -> ()
        "scf.yield"() : () -> ()
      }) : (i32) -> ()
      "scf.yield"(%2) : (i32) -> ()
    }) : (i32, i32, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "dummy_func"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()