"builtin.module"() ({
  "util.func"() <{function_type = (index) -> !hal.device, sym_name = "devices_get", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "hal.devices.get"(%arg0) : (index) -> !hal.device
    "util.return"(%0) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

