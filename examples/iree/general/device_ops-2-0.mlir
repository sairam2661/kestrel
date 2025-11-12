"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device) -> !hal.allocator, sym_name = "device_allocator", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0 = "hal.device.allocator"(%arg0) : (!hal.device) -> !hal.allocator
    "util.return"(%0) : (!hal.allocator) -> ()
  }) : () -> ()
}) : () -> ()

