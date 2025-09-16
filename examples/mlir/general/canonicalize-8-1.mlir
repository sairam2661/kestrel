"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "assert_true"}> ({
    %0 = "arith.constant"() <{value = true}> : () -> i1
    "cf.assert"(%0) <{msg = "Computer says no"}> : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

