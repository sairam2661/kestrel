"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device) -> i32, sym_name = "device_query_i32_default", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0:2 = "hal.device.query"(%arg0) <{category = "sys", default_value = 123 : i32, key = "foo"}> : (!hal.device) -> (i1, i32)
    "util.return"(%0#1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

