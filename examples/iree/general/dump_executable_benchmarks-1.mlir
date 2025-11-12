#executable_target_embedded_elf_aarch64 = #hal.executable.target<"llvm-cpu", "embedded-elf-aarch64">
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDefault>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_aarch64]> : !hal.device
#device_target_local1 = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_local1, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "hal.executable"() <{sym_name = "ex_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant_a", sym_visibility = "public", target = #executable_target_embedded_elf_aarch64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch0", sym_visibility = "public"}> ({
      ^bb0(%arg14: !hal.device, %arg15: index):
        %12:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg15) : (index) -> (index, index, index)
        "hal.return"(%12#0, %12#1, %12#2) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch0"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 1 : index, sym_name = "dispatch1", sym_visibility = "public"}> ({
      ^bb0(%arg11: !hal.device, %arg12: index, %arg13: index):
        %11:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg12) : (index) -> (index, index, index)
        "hal.return"(%11#0, %11#1, %11#2) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch1"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "variant_b", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch0", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device, %arg10: index):
        %10:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg10) : (index) -> (index, index, index)
        "hal.return"(%10#0, %10#1, %10#2) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch0"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 1 : index, sym_name = "dispatch1", sym_visibility = "public"}> ({
      ^bb0(%arg6: !hal.device, %arg7: index, %arg8: index):
        %9:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg7) : (index) -> (index, index, index)
        "hal.return"(%9#0, %9#1, %9#2) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch1"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "ex_1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant_b", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch0", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index):
        %8:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg5) : (index) -> (index, index, index)
        "hal.return"(%8#0, %8#1, %8#2) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch0"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<transient>, !stream.resource<transient>) -> (!stream.timepoint, !stream.timepoint), sym_name = "main", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: !stream.resource<transient>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "arith.constant"() <{value = 64 : index}> : () -> index
    %4 = "arith.constant"() <{value = 128 : index}> : () -> index
    %5 = "arith.constant"() <{value = 512 : index}> : () -> index
    %6 = "stream.cmd.execute"(%arg0, %4) <{affinity = #hal.device.affinity<@device_a>, operandSegmentSizes = array<i32: 1, 1, 0>}> ({
    ^bb0(%arg3: !stream.resource<transient>):
      "stream.cmd.dispatch"(%5, %arg3, %4, %0, %2) <{entry_points = [@ex_0::@variant_a::@dispatch0], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (index, !stream.resource<transient>, index, index, index) -> ()
      "stream.cmd.dispatch"(%5, %arg3, %4, %0, %3) <{entry_points = [@ex_0::@variant_a::@dispatch1], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (index, !stream.resource<transient>, index, index, index) -> ()
      "stream.cmd.dispatch"(%4, %arg3, %4, %0, %3) <{entry_points = [@ex_0::@variant_a::@dispatch1], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (index, !stream.resource<transient>, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<transient>, index) -> !stream.timepoint
    %7 = "stream.cmd.execute"(%arg1, %4) <{affinity = #hal.device.affinity<@device_b>, operandSegmentSizes = array<i32: 1, 1, 0>}> ({
    ^bb0(%arg2: !stream.resource<transient>):
      "stream.cmd.dispatch"(%5, %arg2, %4, %0, %2) <{entry_points = [@ex_0::@variant_a::@dispatch0], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (index, !stream.resource<transient>, index, index, index) -> ()
      "stream.cmd.dispatch"(%5, %arg2, %4, %0, %3) <{entry_points = [@ex_0::@variant_a::@dispatch1], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (index, !stream.resource<transient>, index, index, index) -> ()
      "stream.cmd.dispatch"(%4, %arg2, %4, %0, %3) <{entry_points = [@ex_0::@variant_b::@dispatch0], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1, 1>, resource_accesses = [3 : i32]}> : (index, !stream.resource<transient>, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<transient>, index) -> !stream.timepoint
    "util.return"(%6, %7) : (!stream.timepoint, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

