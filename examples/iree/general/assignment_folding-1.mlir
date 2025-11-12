"builtin.module"() ({
  "util.func"() <{function_type = (index) -> i32, sym_name = "foldSwitchI32Identical", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "util.switch"(%arg0, %0, %0, %0, %0) : (index, i32, i32, i32, i32) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

