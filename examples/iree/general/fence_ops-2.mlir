"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence) -> i32, sym_name = "fence_query", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.fence):
    %0 = "hal.fence.query"(%arg0) : (!hal.fence) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

