"builtin.module"() ({
  "util.func"() <{function_type = (index) -> i32, sym_name = "switch", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 300 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 400 : i32}> : () -> i32
    %4 = "util.switch"(%arg0, %3, %0, %1, %2) : (index, i32, i32, i32, i32) -> i32
    "util.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

