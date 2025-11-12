"builtin.module"() ({
  "util.func"() <{function_type = () -> i64, sym_name = "constant_i64", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 123 : i64}> : () -> i64
    "util.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

