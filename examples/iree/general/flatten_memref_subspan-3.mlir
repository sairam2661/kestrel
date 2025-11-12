#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> f16, sym_name = "load_subspan_with_16bit_element"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<6x7x8xf16, strided<[56, 8, 1], offset: ?>>
    %1 = "memref.load"(%0, %arg1, %arg2, %arg3) : (memref<6x7x8xf16, strided<[56, 8, 1], offset: ?>>, index, index, index) -> f16
    "func.return"(%1) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

