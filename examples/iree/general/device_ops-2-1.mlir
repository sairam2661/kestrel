"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device) -> (i1, i32), sym_name = "device_query", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0:2 = "hal.device.query"(%arg0) <{category = "sys", key = "foo"}> : (!hal.device) -> (i1, i32)
    "util.return"(%0#0, %0#1) : (i1, i32) -> ()
  }) : () -> ()
}) : () -> ()

