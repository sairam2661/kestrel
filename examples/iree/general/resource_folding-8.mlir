"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> (), sym_name = "FoldSubviewIntoStoreOp", sym_visibility = "private"}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 256 : index}> : () -> index
    %3 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %4 = "stream.resource.subview"(%arg0, %arg1, %1, %2) : (!stream.resource<staging>, index, index, index) -> !stream.resource<staging>
    "stream.resource.store"(%4, %2, %0, %3) : (!stream.resource<staging>, index, index, i32) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

