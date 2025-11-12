"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}, {tt.divisibility = 4 : i32}, {}], function_type = (i32, i32) -> (i32), sym_name = "complex_op"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %1 = "arith.remsi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.select"(%arg1, %arg0, %1) : (i1, i32, i32) -> i32
    %3 = "arith.addi"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.divsi"(%4, %arg0) : (i32, i32) -> i32
    %6 = "arith.select"(%arg1, %5, %4) : (i1, i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> (i32)
}) : () -> ()