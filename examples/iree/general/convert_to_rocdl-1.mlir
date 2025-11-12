#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reduction_maximum"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<32x64x64xf32, strided<[4096, 64, 1], offset: ?>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<32x64x64xf32, strided<[4096, 64, 1], offset: ?>>
    %3 = "vector.load"(%1, %0, %0, %0) : (memref<32x64x64xf32, strided<[4096, 64, 1], offset: ?>>, index, index, index) -> vector<2xf32>
    %4 = "vector.reduction"(%3) <{fastmath = #arith.fastmath<none>, kind = #vector.kind<maximumf>}> : (vector<2xf32>) -> f32
    %5 = "vector.splat"(%4) : (f32) -> vector<2xf32>
    "vector.store"(%5, %2, %0, %0, %0) : (vector<2xf32>, memref<32x64x64xf32, strided<[4096, 64, 1], offset: ?>>, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

