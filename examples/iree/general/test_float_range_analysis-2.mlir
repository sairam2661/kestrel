"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "scalar_non_float", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "iree_unregistered.test_fprange"(%0) : (i32) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

