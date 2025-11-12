#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> (), sym_name = "load_store_subspan_with_zero_offset"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "hal.interface.binding.subspan"(%arg0, %arg1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x?xf32>
    %1 = "hal.interface.binding.subspan"(%arg0, %arg1) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x?xf32>
    %2 = "memref.load"(%0, %arg2, %arg3) : (memref<?x?xf32>, index, index) -> f32
    "memref.store"(%2, %1, %arg2, %arg3) : (f32, memref<?x?xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

