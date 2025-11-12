#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "util.global"() <{sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{sym_name = "_executable_exe", sym_visibility = "private", type = !hal.executable}> : () -> ()
  "util.initializer"() <{function_type = () -> ()}> ({
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %3 = "hal.devices.get"(%1) : (index) -> !hal.device
    %4:2 = "hal.device.query"(%3) <{category = "hal.executable.format", key = "some-format"}> : (!hal.device) -> (i1, i1)
    %5 = "arith.constant"() <{value = -1 : index}> : () -> index
    %6 = "arith.select"(%4#1, %1, %5) : (i1, index, index) -> index
    %7 = "scf.index_switch"(%6) <{cases = array<i64: 0>}> ({
      %9 = "util.null"() : () -> !hal.executable
      "scf.yield"(%9) : (!hal.executable) -> ()
    }, {
      %8 = "hal.executable.create"(%3, %2) <{executable_target = @exe0::@vmvx}> : (!hal.device, i64) -> !hal.executable
      "scf.yield"(%8) : (!hal.executable) -> ()
    }) : (index) -> !hal.executable
    "util.global.store"(%7) <{global = @_executable_exe}> : (!hal.executable) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "exe"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry", sym_visibility = "public", workgroup_size = [32 : index, 1 : index, 1 : index]}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.device) -> !hal.executable, sym_name = "exeLookup", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0 = "util.global.load"() <{global = @_executable_exe}> : () -> !hal.executable
    "util.return"(%0) : (!hal.executable) -> ()
  }) : () -> ()
}) : () -> ()

