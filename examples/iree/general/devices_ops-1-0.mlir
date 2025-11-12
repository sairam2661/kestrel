"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "devices_count", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "hal.devices.count"() : () -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

