"builtin.module"() ({
  "util.func"() <{function_type = () -> !hal.device, sym_name = "deviceResolveAnyDevice", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "hal.device.resolve"() : () -> !hal.device
    "util.return"(%0) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

