"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "canonicalize_unfoldable_constant", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.unfoldable_constant"() <{value = 42 : i32}> : () -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

