"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_mix"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.remsi"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.xori"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.select"(%4, %2, %1) : (i32, i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()