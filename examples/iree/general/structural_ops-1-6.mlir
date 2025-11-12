"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>) -> i32, sym_name = "basicFunc", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

