#executable_target_embedded_elf_aarch64 = #hal.executable.target<"llvm-cpu", "embedded-elf-aarch64">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_aarch64}> ({
      "hal.executable.export"() <{condition_fallback = @export1, layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export0", sym_visibility = "public"}> ({
      ^bb0(%arg11: !hal.device, %arg12: index):
        %9 = "arith.constant"() <{value = 100 : index}> : () -> index
        "hal.return"(%arg12, %9, %9) : (index, index, index) -> ()
      }, {
      ^bb0(%arg9: !hal.device, %arg10: index):
        %7 = "arith.constant"() <{value = 0 : index}> : () -> index
        %8 = "arith.cmpi"(%arg10, %7) <{predicate = 0 : i64}> : (index, index) -> i1
        "hal.return"(%8) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{condition_fallback = @export2, layout = #pipeline_layout, ordinal = 1 : index, sym_name = "export1", sym_visibility = "public"}> ({
      ^bb0(%arg7: !hal.device, %arg8: index):
        %6 = "arith.constant"() <{value = 101 : index}> : () -> index
        "hal.return"(%arg8, %6, %6) : (index, index, index) -> ()
      }, {
      ^bb0(%arg5: !hal.device, %arg6: index):
        %4 = "arith.constant"() <{value = 1 : index}> : () -> index
        %5 = "arith.cmpi"(%arg6, %4) <{predicate = 0 : i64}> : (index, index) -> i1
        "hal.return"(%5) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 2 : index, sym_name = "export2", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device, %arg4: index):
        %3 = "arith.constant"() <{value = 102 : index}> : () -> index
        "hal.return"(%arg4, %3, %3) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.global"() <{sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = (index, !stream.resource<external>) -> !stream.timepoint, sym_name = "cmdDispatchFallback", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: !stream.resource<external>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "stream.cmd.execute"(%arg1, %1) <{affinity = #hal.device.affinity<@device>, operandSegmentSizes = array<i32: 1, 1, 0>}> ({
    ^bb0(%arg2: !stream.resource<external>):
      "stream.cmd.dispatch"(%arg0, %arg2, %1, %0, %1) <{entry_points = [@executable::@variant::@export0], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1, 1>, resource_accesses = [2 : i32]}> : (index, !stream.resource<external>, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<external>, index) -> !stream.timepoint
    "util.return"(%2) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

