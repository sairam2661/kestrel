#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "exe", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg0: !hal.device):
        %6:2 = "hal.device.query"(%arg0) <{category = "some", key = "feature"}> : (!hal.device) -> (i1, i1)
        "hal.return"(%6#1) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = () -> (i32, i32), keys = ["foo", "bar"]}> ({
        %4 = "arith.constant"() <{value = 123 : i32}> : () -> i32
        %5 = "arith.constant"() <{value = 456 : i32}> : () -> i32
        "hal.return"(%4, %5) : (i32, i32) -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.global"() <{initial_value = #hal.device.ordinal<0> : !hal.device, sym_name = "primary_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.select<[#hal.device.ordinal<1> : !hal.device, #hal.device.fallback<@primary_device> : !hal.device]> : !hal.device, sym_name = "optional_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> (!hal.executable, !hal.executable), sym_name = "fallbackLookup", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
    %0 = "util.global.load"() <{global = @primary_device}> : () -> !hal.device
    %1 = "hal.executable.lookup"(%0) <{executable = @exe}> : (!hal.device) -> !hal.executable
    %2 = "util.global.load"() <{global = @optional_device}> : () -> !hal.device
    %3 = "hal.executable.lookup"(%2) <{executable = @exe}> : (!hal.device) -> !hal.executable
    "util.return"(%1, %3) : (!hal.executable, !hal.executable) -> ()
  }) : () -> ()
}) : () -> ()

