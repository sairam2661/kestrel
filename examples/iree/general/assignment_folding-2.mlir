"builtin.module"() ({
  "util.func"() <{function_type = () -> (i32, i32, i32, i32), sym_name = "foldSwitchI32ConstantIndex", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 300 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 400 : i32}> : () -> i32
    %8 = "util.switch"(%0, %7, %4, %5, %6) : (index, i32, i32, i32, i32) -> i32
    %9 = "util.switch"(%1, %7, %4, %5, %6) : (index, i32, i32, i32, i32) -> i32
    %10 = "util.switch"(%2, %7, %4, %5, %6) : (index, i32, i32, i32, i32) -> i32
    %11 = "util.switch"(%3, %7, %4, %5, %6) : (index, i32, i32, i32, i32) -> i32
    "util.return"(%8, %9, %10, %11) : (i32, i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

