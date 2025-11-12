"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> (), sym_name = "resourceStore", sym_visibility = "public"}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    "stream.resource.store"(%arg0, %arg1, %0, %1) : (!stream.resource<staging>, index, index, i32) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

