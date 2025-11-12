"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device) -> i1, sym_name = "unknown_device", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0:2 = "hal.device.query"(%arg0) <{category = "hal.device.id", default_value = false, key = "id0"}> : (!hal.device) -> (i1, i1)
    "util.return"(%0#1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

