#executable_target_arm_64 = #hal.executable.target<"llvm-cpu", "arm_64">
#executable_target_riscv_32 = #hal.executable.target<"llvm-cpu", "riscv_32">
#executable_target_x86_64 = #hal.executable.target<"llvm-cpu", "x86_64">
#device_target_cpu = #hal.device.target<"cpu", [#executable_target_arm_64, #executable_target_x86_64]> : !hal.device
#device_target_cpu1 = #hal.device.target<"cpu", [#executable_target_riscv_32]> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_cpu, sym_name = "default_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_cpu1, sym_name = "riscv_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "stream.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "stream.executable.export"() <{function_ref = @entry, sym_name = "entry", sym_visibility = "public"}> ({
      %4 = "arith.constant"() <{value = 1 : index}> : () -> index
      "stream.return"(%4, %4, %4) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{arg_attrs = [{stream.alignment = 64 : index}], function_type = (!stream.binding) -> (), sym_name = "entry"}> ({
      ^bb0(%arg6: !stream.binding):
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<transient>, index) -> !stream.timepoint, sym_name = "using_default", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg3: !stream.resource<transient>, %arg4: index):
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "stream.cmd.execute"(%arg3, %arg4) <{operandSegmentSizes = array<i32: 1, 1, 0>}> ({
    ^bb0(%arg5: !stream.resource<transient>):
      "stream.cmd.dispatch"(%arg5, %arg4, %2, %arg4) <{entry_points = [@ex::@entry], operandSegmentSizes = array<i32: 0, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (!stream.resource<transient>, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<transient>, index) -> !stream.timepoint
    "util.return"(%3) : (!stream.timepoint) -> ()
  }) {stream.affinity = #hal.device.affinity<@default_device>} : () -> ()
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

