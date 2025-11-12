"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}, {tt.divisibility = 16 : i32}, {}], function_type = (i32, i32) -> (i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.xori"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.divsi"(%4, %arg0) <{signedness = 1}> : (i32, i32) -> i32
    %6 = "arith.select"(%arg0, %5, %arg1) <{predicate = #arith_predicateeq}> : (i32, i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()