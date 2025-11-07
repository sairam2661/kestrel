"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> i8, sym_name = "return_wire"}> ({
  ^bb0(%arg1: i8):
    "func.return"(%arg1) : (i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i1, sym_name = "return_constant_bit"}> ({
    %0 = "arith.constant"() <{value = false}> : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> i1, sym_name = "return_bit"}> ({
  ^bb0(%arg0: i1):
    "func.return"(%arg0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

