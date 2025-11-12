#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "missing_ptr_dispatch_copy_idx_0"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "arith.index_castui"(%1) : (i32) -> index
    %3 = "hal.interface.binding.subspan"(%2) <{binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xf32, strided<[1], offset: ?>, #gpu.address_space<global>>
    %4 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32, #gpu.address_space<global>>
    %5 = "memref.load"(%3, %0) : (memref<16xf32, strided<[1], offset: ?>, #gpu.address_space<global>>, index) -> f32
    "memref.store"(%5, %4, %0) : (f32, memref<16xf32, #gpu.address_space<global>>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

