#device_target_vmvx = #hal.device.target<"vmvx"> : !hal.device
"builtin.module"() <{sym_name = "module"}> ({
  "util.global"() <{initial_value = #device_target_vmvx, sym_name = "device0", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_vmvx, sym_name = "device1", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{arg_attrs = [{arg.affinity = #hal.device.promise<@device1>}], function_type = (tensor<i32>) -> tensor<i32>, res_attrs = [{result.affinity = #hal.device.promise<@device1>}], sym_name = "func", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<i32>):
    "util.return"(%arg0) {some.affinities = [#hal.device.promise<@device0>, #hal.device.promise<@device1>]} : (tensor<i32>) -> ()
  }) {func.affinity = #hal.device.promise<@device1>} : () -> ()
}) {stream.affinity = #hal.device.promise<@device0, [1, 2, 3]>} : () -> ()

