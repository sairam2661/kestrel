"builtin.module"() ({
  "tt.func"() <{function_type = () -> i64, sym_name = "int_min_does_not_underflow_in_analysis"}> ({
    %0 = "arith.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    "tt.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

