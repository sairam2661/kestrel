"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index, index) -> (), sym_name = "resourceStore", sym_visibility = "public"}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    "stream.resource.store"(%arg0, %arg1, %arg2, %0) : (!stream.resource<staging>, index, index, i32) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

