#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm", "embedded-elf-x86_64">
#map = affine_map<()[s0] -> (s0 ceildiv 4)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 16 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg6: !hal.device, %arg7: index, %arg8: index):
        %9 = "affine.apply"(%arg7) <{map = #map}> : (index) -> index
        %10 = "affine.apply"(%arg8) <{map = #map}> : (index) -> index
        %11 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%9, %10, %11) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<transient>, index, !stream.resource<external>, index) -> !stream.timepoint, sym_name = "cmdDispatch", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: index, %arg2: !stream.resource<external>, %arg3: index):
    %0 = "arith.constant"() <{value = 1000 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1001 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 200 : index}> : () -> index
    %5 = "arith.constant"() <{value = 128 : index}> : () -> index
    %6 = "arith.constant"() <{value = 300 : index}> : () -> index
    %7 = "arith.constant"() <{value = 256 : index}> : () -> index
    %8 = "stream.cmd.execute"(%arg0, %arg2, %arg1, %arg3) <{operandSegmentSizes = array<i32: 2, 2, 0>}> ({
    ^bb0(%arg4: !stream.resource<transient>, %arg5: !stream.resource<external>):
      "stream.cmd.dispatch"(%0, %1, %2, %3, %arg4, %arg5, %arg1, %arg3, %4, %6, %5, %7) <{entry_points = [@ex::@dispatch], operandSegmentSizes = array<i32: 2, 2, 2, 2, 2, 2>, resource_accesses = [1 : i32, 2 : i32]}> : (index, index, i32, i32, !stream.resource<transient>, !stream.resource<external>, index, index, index, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<transient>, !stream.resource<external>, index, index) -> !stream.timepoint
    "util.return"(%8) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

