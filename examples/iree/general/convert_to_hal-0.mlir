#executable_target_embedded_elf_aarch64 = #hal.executable.target<"llvm-cpu", "embedded-elf-aarch64">
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#map = affine_map<()[s0] -> (s0 ceildiv 4)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "util.global"() <{sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "hal.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "embedded_elf_aarch64", sym_visibility = "public", target = #executable_target_embedded_elf_aarch64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device, %arg10: index, %arg11: index, %arg12: index):
        %12 = "arith.constant"() <{value = 1 : index}> : () -> index
        %13 = "affine.apply"(%arg10) <{map = #map}> : (index) -> index
        "hal.return"(%13, %12, %12) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "embedded_elf_x86_64", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index, %arg7: index, %arg8: index):
        %10 = "arith.constant"() <{value = 1 : index}> : () -> index
        %11 = "affine.apply"(%arg6) <{map = #map}> : (index) -> index
        "hal.return"(%11, %10, %10) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view, sym_name = "simpleDispatch", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 16 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "stream.tensor.import"(%arg0, %2) <{result_encoding = tensor<4xf32>}> : (!hal.buffer_view, index) -> !stream.resource<external>
    %5 = "stream.tensor.import"(%arg1, %2) <{result_encoding = tensor<4xf32>}> : (!hal.buffer_view, index) -> !stream.resource<external>
    %6 = "stream.resource.alloc"(%2) <{uninitialized}> : (index) -> !stream.resource<external>
    %7 = "stream.cmd.execute"(%4, %5, %6, %2, %2, %2) <{once, operandSegmentSizes = array<i32: 3, 3, 0>}> ({
    ^bb0(%arg2: !stream.resource<external>, %arg3: !stream.resource<external>, %arg4: !stream.resource<external>):
      "stream.cmd.dispatch"(%1, %0, %0, %arg2, %arg3, %arg4, %2, %2, %2, %3, %3, %3, %2, %2, %2) <{entry_points = [@ex::@embedded_elf_aarch64::@dispatch, @ex::@embedded_elf_x86_64::@dispatch], operandSegmentSizes = array<i32: 3, 0, 3, 3, 3, 3>, resource_accesses = [1 : i32, 1 : i32, 2 : i32]}> : (index, index, index, !stream.resource<external>, !stream.resource<external>, !stream.resource<external>, index, index, index, index, index, index, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<external>, !stream.resource<external>, !stream.resource<external>, index, index, index) -> !stream.timepoint
    %8 = "stream.timepoint.await"(%6, %2, %7) <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (!stream.resource<external>, index, !stream.timepoint) -> !stream.resource<external>
    %9 = "stream.tensor.export"(%8, %2) <{source_encoding = tensor<4xf32>}> : (!stream.resource<external>, index) -> !hal.buffer_view
    "util.return"(%9) : (!hal.buffer_view) -> ()
  }) {stream.affinity = #hal.device.affinity<@device>} : () -> ()
}) : () -> ()

