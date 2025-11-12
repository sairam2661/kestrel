#executable_target_arm_64 = #hal.executable.target<"llvm-cpu", "arm_64">
#executable_target_x86_64 = #hal.executable.target<"llvm-cpu", "x86_64">
#device_target_cpu = #hal.device.target<"cpu", [#executable_target_arm_64, #executable_target_x86_64]> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_cpu, sym_name = "default_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "stream.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "stream.executable.export"() <{function_ref = @entry, sym_name = "entry", sym_visibility = "public"}> ({
    ^bb0(%arg11: index, %arg12: index):
      "stream.return"(%arg11, %arg12, %arg11) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "extern_func", sym_visibility = "private"}> ({
      }) : () -> ()
      "func.func"() <{arg_attrs = [{}, {stream.alignment = 64 : index}, {stream.alignment = 64 : index}, {stream.alignment = 64 : index}], function_type = (i32, !stream.binding, !stream.binding, !stream.binding) -> (), sym_name = "entry"}> ({
      ^bb0(%arg7: i32, %arg8: !stream.binding, %arg9: !stream.binding, %arg10: !stream.binding):
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<constant>, !stream.resource<transient>, index, i32) -> !stream.resource<transient>, sym_name = "main", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<constant>, %arg1: !stream.resource<transient>, %arg2: index, %arg3: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "stream.resource.alloc"(%arg2) <{uninitialized}> : (index) -> !stream.resource<transient>
    %4 = "stream.cmd.execute"(%arg0, %arg1, %3, %arg2, %arg2, %arg2) <{operandSegmentSizes = array<i32: 3, 3, 0>}> ({
    ^bb0(%arg4: !stream.resource<constant>, %arg5: !stream.resource<transient>, %arg6: !stream.resource<transient>):
      "stream.cmd.dispatch"(%1, %2, %arg3, %arg4, %arg5, %arg6, %arg2, %arg2, %arg2, %0, %0, %0, %arg2, %arg2, %arg2) <{entry_points = [@ex::@entry], operandSegmentSizes = array<i32: 2, 1, 3, 3, 3, 3>, resource_accesses = [1 : i32, 1 : i32, 2 : i32]}> : (index, index, i32, !stream.resource<constant>, !stream.resource<transient>, !stream.resource<transient>, index, index, index, index, index, index, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<constant>, !stream.resource<transient>, !stream.resource<transient>, index, index, index) -> !stream.timepoint
    %5 = "stream.timepoint.await"(%3, %arg2, %4) <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (!stream.resource<transient>, index, !stream.timepoint) -> !stream.resource<transient>
    "util.return"(%5) : (!stream.resource<transient>) -> ()
  }) {stream.affinity = #hal.device.affinity<@default_device>} : () -> ()
}) : () -> ()

