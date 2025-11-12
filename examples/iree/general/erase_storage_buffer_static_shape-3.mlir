#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "storage_buffer_transfer_read_write"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256xf32, #hal.descriptor_type<storage_buffer>>
    %1 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256xf32, #hal.descriptor_type<storage_buffer>>
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "vector.transfer_read"(%0, %arg1, %2) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (memref<256xf32, #hal.descriptor_type<storage_buffer>>, index, f32) -> vector<4xf32>
    "vector.transfer_write"(%3, %1, %arg2) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (vector<4xf32>, memref<256xf32, #hal.descriptor_type<storage_buffer>>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

