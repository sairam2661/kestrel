"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> i32, sym_name = "FoldSubviewIntoLoadOp", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 256 : index}> : () -> index
    %3 = "stream.resource.subview"(%arg0, %arg1, %1, %2) : (!stream.resource<staging>, index, index, index) -> !stream.resource<staging>
    %4 = "stream.resource.load"(%3, %2, %0) : (!stream.resource<staging>, index, index) -> i32
    "util.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

