#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#map = affine_map<()[s0] -> (s0 ceildiv 4)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDefault>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local, sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "hal.executable"() <{sym_name = "ex0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "embedded_elf_x86_64", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch0", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index):
        %15:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6) : (index) -> (index, index, index)
        "hal.return"(%15#0, %15#1, %15#2) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch0"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout1, ordinal = 1 : index, sym_name = "dispatch1", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device, %arg3: index, %arg4: index):
        %12 = "arith.constant"() <{value = 1 : index}> : () -> index
        %13 = "affine.apply"(%arg3) <{map = #map}> : (index) -> index
        %14 = "arith.addi"(%13, %arg4) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "hal.return"(%14, %12, %12) : (index, index, index) -> ()
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
  "util.func"() <{function_type = (i32) -> !stream.timepoint, sym_name = "main", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "arith.constant"() <{value = 64 : index}> : () -> index
    %4 = "arith.constant"() <{value = 128 : index}> : () -> index
    %5 = "arith.constant"() <{value = 512 : index}> : () -> index
    %6 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 300 : i32}> : () -> i32
    %9:2 = "stream.resource.alloca"(%4) : (index) -> (!stream.resource<transient>, !stream.timepoint)
    %10 = "stream.cmd.execute"(%9#0, %4, %9#1) <{operandSegmentSizes = array<i32: 1, 1, 1>}> ({
    ^bb0(%arg1: !stream.resource<transient>):
      "stream.cmd.dispatch"(%5, %6, %7, %arg1, %arg1, %arg1, %4, %4, %4, %0, %2, %3, %2, %2, %2) <{entry_points = [@ex0::@embedded_elf_x86_64::@dispatch0], operandSegmentSizes = array<i32: 1, 2, 3, 3, 3, 3>, resource_accesses = [1 : i32, 3 : i32, 3 : i32]}> : (index, i32, i32, !stream.resource<transient>, !stream.resource<transient>, !stream.resource<transient>, index, index, index, index, index, index, index, index, index) -> ()
      "stream.cmd.dispatch"(%5, %8, %arg0, %arg1, %arg1, %arg1, %4, %4, %4, %0, %2, %3, %2, %2, %2) <{entry_points = [@ex0::@embedded_elf_x86_64::@dispatch0], operandSegmentSizes = array<i32: 1, 2, 3, 3, 3, 3>, resource_accesses = [1 : i32, 3 : i32, 3 : i32]}> : (index, i32, i32, !stream.resource<transient>, !stream.resource<transient>, !stream.resource<transient>, index, index, index, index, index, index, index, index, index) -> ()
      "stream.cmd.dispatch"(%5, %1, %arg1, %arg1, %4, %4, %0, %3, %3, %2) <{entry_points = [@ex0::@embedded_elf_x86_64::@dispatch1], operandSegmentSizes = array<i32: 2, 0, 2, 2, 2, 2>, resource_accesses = [1 : i32, 3 : i32]}> : (index, index, !stream.resource<transient>, !stream.resource<transient>, index, index, index, index, index, index) -> ()
      "stream.cmd.dispatch"(%4, %2, %arg1, %arg1, %4, %4, %0, %3, %3, %2) <{entry_points = [@ex0::@embedded_elf_x86_64::@dispatch1], operandSegmentSizes = array<i32: 2, 0, 2, 2, 2, 2>, resource_accesses = [1 : i32, 3 : i32]}> : (index, index, !stream.resource<transient>, !stream.resource<transient>, index, index, index, index, index, index) -> ()
      "stream.cmd.dispatch"(%4, %2, %arg1, %arg1, %4, %4, %0, %3, %3, %2) <{entry_points = [@ex0::@embedded_elf_x86_64::@dispatch1], operandSegmentSizes = array<i32: 2, 0, 2, 2, 2, 2>, resource_accesses = [1 : i32, 3 : i32]}> : (index, index, !stream.resource<transient>, !stream.resource<transient>, index, index, index, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<transient>, index, !stream.timepoint) -> !stream.timepoint
    %11 = "stream.resource.dealloca"(%9#0, %4, %10) : (!stream.resource<transient>, index, !stream.timepoint) -> !stream.timepoint
    "util.return"(%11) : (!stream.timepoint) -> ()
  }) {stream.affinity = #hal.device.affinity<@device>} : () -> ()
}) : () -> ()

