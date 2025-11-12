#executable_target_arm_64 = #hal.executable.target<"llvm-cpu", "arm_64">
#executable_target_riscv_32 = #hal.executable.target<"llvm-cpu", "riscv_32">
#executable_target_x86_64 = #hal.executable.target<"llvm-cpu", "x86_64">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
#device_target_cpu = #hal.device.target<"cpu", [#executable_target_arm_64, #executable_target_x86_64]> : !hal.device
#device_target_cpu1 = #hal.device.target<"cpu", [#executable_target_riscv_32]> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_cpu, sym_name = "primary_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_cpu1, sym_name = "riscv_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "hal.executable.source"() <{sym_name = "ex", sym_visibility = "public"}> ({
    "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "entry", sym_visibility = "public"}> ({
    }, {
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "entry"}> ({
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "hal.executable.source_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<transient>, index) -> !stream.timepoint, sym_name = "using_specialized", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "stream.cmd.execute"(%arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0>}> ({
    ^bb0(%arg2: !stream.resource<transient>):
      "stream.cmd.dispatch"(%arg2, %arg1, %0, %arg1) <{entry_points = [@ex::@entry], operandSegmentSizes = array<i32: 0, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (!stream.resource<transient>, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<transient>, index) -> !stream.timepoint
    "util.return"(%1) : (!stream.timepoint) -> ()
  }) {stream.affinity = #hal.device.affinity<@riscv_device>} : () -> ()
}) : () -> ()

