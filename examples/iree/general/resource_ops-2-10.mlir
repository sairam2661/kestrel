"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index, index) -> i32, sym_name = "resourceLoad", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index, %arg2: index):
    %0 = "stream.resource.load"(%arg0, %arg1, %arg2) : (!stream.resource<staging>, index, index) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

