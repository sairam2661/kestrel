"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.resource<transient>, sym_name = "deviceHostDevice", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 123 : i8}> : () -> i8
    %3 = "stream.async.splat"(%2, %1) : (i8, index) -> !stream.resource<transient>
    %4 = "stream.async.transfer"(%3, %1, %1) : (!stream.resource<transient>, index, index) -> !stream.resource<staging>
    %5 = "stream.async.load"(%4, %1, %0) : (!stream.resource<staging>, index, index) -> i8
    %6 = "arith.addi"(%5, %5) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
    %7 = "stream.async.store"(%4, %1, %0, %6) : (!stream.resource<staging>, index, index, i8) -> !stream.resource<staging>
    %8 = "stream.async.transfer"(%7, %1, %1) : (!stream.resource<staging>, index, index) -> !stream.resource<transient>
    "util.return"(%8) : (!stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

