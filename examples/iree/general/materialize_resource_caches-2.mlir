#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "exe", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.global"() <{initial_value = #hal.device.ordinal<0> : !hal.device, sym_name = "primary_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.select<[#hal.device.ordinal<1> : !hal.device, #hal.device.fallback<@primary_device> : !hal.device]> : !hal.device, sym_name = "optional_device_0", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.select<[#hal.device.ordinal<2> : !hal.device, #hal.device.fallback<@optional_device_0> : !hal.device]> : !hal.device, sym_name = "optional_device_1", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> !hal.executable, sym_name = "fallbackOnlyLookup", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.global.load"() <{global = @optional_device_1}> : () -> !hal.device
    %1 = "hal.executable.lookup"(%0) <{executable = @exe}> : (!hal.device) -> !hal.executable
    "util.return"(%1) : (!hal.executable) -> ()
  }) : () -> ()
}) : () -> ()

