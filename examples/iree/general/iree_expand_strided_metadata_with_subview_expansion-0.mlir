#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> memref<256x4096xf16, #amdgpu.address_space<fat_raw_buffer>>, sym_name = "expand_subview_into_resource_cast"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 4096 : i14}> : () -> i14
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "arith.index_castui"(%1) : (i32) -> index
    %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<4096x4096xf16, #gpu.address_space<global>>
    %4 = "memref.subview"(%3, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 256, 4096>, static_strides = array<i64: 1, 1>}> : (memref<4096x4096xf16, #gpu.address_space<global>>, index) -> memref<256x4096xf16, strided<[4096, 1], offset: ?>, #gpu.address_space<global>>
    %5 = "amdgpu.fat_raw_buffer_cast"(%4, %0) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 1>, resetOffset}> : (memref<256x4096xf16, strided<[4096, 1], offset: ?>, #gpu.address_space<global>>, i14) -> memref<256x4096xf16, #amdgpu.address_space<fat_raw_buffer>>
    "func.return"(%5) : (memref<256x4096xf16, #amdgpu.address_space<fat_raw_buffer>>) -> ()
  }) : () -> ()
}) : () -> ()

