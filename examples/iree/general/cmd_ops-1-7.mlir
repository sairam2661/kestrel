#executable_target_embedded_elf_aarch64 = #hal.executable.target<"llvm-cpu", "embedded-elf-aarch64">
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#map = affine_map<()[s0] -> (s0 ceildiv 4)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer, Indirect>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDefault>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "aarch64", sym_visibility = "public", target = #executable_target_embedded_elf_aarch64}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg11: !hal.device):
        %15:2 = "hal.device.query"(%arg11) <{category = "some", key = "feature"}> : (!hal.device) -> (i1, i1)
        "hal.return"(%15#1) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg7: !hal.device, %arg8: index, %arg9: index, %arg10: index):
        %13 = "arith.constant"() <{value = 1 : index}> : () -> index
        %14 = "affine.apply"(%arg8) <{map = #map}> : (index) -> index
        "hal.return"(%14, %13, %13) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "x86_64", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device, %arg4: index, %arg5: index, %arg6: index):
        %11 = "arith.constant"() <{value = 1 : index}> : () -> index
        %12 = "affine.apply"(%arg4) <{map = #map}> : (index) -> index
        "hal.return"(%12, %11, %11) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.global"() <{sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{sym_name = "constant_resource", sym_visibility = "private", type = !stream.resource<constant>}> : () -> ()
  "util.global"() <{sym_name = "constant_size", sym_visibility = "private", type = index}> : () -> ()
  "util.func"() <{function_type = (!stream.resource<external>) -> !stream.timepoint, sym_name = "cmdDispatch", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 128 : index}> : () -> index
    %7 = "util.global.load"() <{global = @constant_resource, is_immutable}> : () -> !stream.resource<constant>
    %8 = "util.global.load"() <{global = @constant_size, is_immutable}> : () -> index
    %9 = "arith.constant"() <{value = 200 : index}> : () -> index
    %10 = "stream.cmd.execute"(%7, %arg0, %8, %9) <{affinity = #hal.device.affinity<@device>, operandSegmentSizes = array<i32: 2, 2, 0>}> ({
    ^bb0(%arg1: !stream.resource<constant>, %arg2: !stream.resource<external>):
      "stream.cmd.dispatch"(%1, %2, %3, %4, %5, %arg1, %arg2, %8, %9, %0, %0, %6, %6) <{entry_points = [@ex::@aarch64::@dispatch, @ex::@x86_64::@dispatch], operandSegmentSizes = array<i32: 3, 2, 2, 2, 2, 2>, resource_accesses = [1 : i32, 2 : i32]}> : (index, index, index, i32, i32, !stream.resource<constant>, !stream.resource<external>, index, index, index, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<constant>, !stream.resource<external>, index, index) -> !stream.timepoint
    "util.return"(%10) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

