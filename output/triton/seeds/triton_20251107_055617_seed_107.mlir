"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!ttptr, i64, i32) -> i32, sym_name = "complex_control_flow_test"}> ({
  ^bb0(%arg0: !ttptr, %arg1: i64, %arg2: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "scf.if"(%arg2) ({
    ^bb0:
      "scf.for"(%arg1, %3, %2) ({
      ^bb0(%arg3: i32):
        %4 = "arith.addi"(%arg3, %0) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (i32, i64, i32) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()