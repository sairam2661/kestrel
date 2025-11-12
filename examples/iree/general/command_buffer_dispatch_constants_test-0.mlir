#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable.source"() <{sym_name = "executable", sym_visibility = "public"}> ({
    "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "write_constants", sym_visibility = "public", workgroup_size = [1 : index, 1 : index, 1 : index]}> ({
    ^bb0(%arg0: !hal.device):
      %9 = "arith.constant"() <{value = 1 : index}> : () -> index
      "hal.return"(%9, %9, %9) : (index, index, index) -> ()
    }, {
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "write_constants"}> ({
        %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
        %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
        %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
        %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
        %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4xi32>
        %5 = "arith.constant"() <{value = 0 : index}> : () -> index
        %6 = "arith.constant"() <{value = 1 : index}> : () -> index
        %7 = "arith.constant"() <{value = 2 : index}> : () -> index
        %8 = "arith.constant"() <{value = 3 : index}> : () -> index
        "memref.store"(%0, %4, %5) : (i32, memref<4xi32>, index) -> ()
        "memref.store"(%1, %4, %6) : (i32, memref<4xi32>, index) -> ()
        "memref.store"(%2, %4, %7) : (i32, memref<4xi32>, index) -> ()
        "memref.store"(%3, %4, %8) : (i32, memref<4xi32>, index) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "hal.executable.source_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

