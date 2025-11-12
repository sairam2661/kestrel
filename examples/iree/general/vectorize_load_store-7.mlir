#map = affine_map<(d0, d1, d2, d3) -> (d3)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "resource_copy_dynamic_shape"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%2, %3) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x8x?x128xf32>
    %5 = "hal.interface.binding.subspan"(%2, %3) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x8x?x128xf32>
    %6 = "vector.transfer_read"(%4, %1, %1, %1, %1, %0) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 4, 1, 0>, permutation_map = #map}> : (memref<?x8x?x128xf32>, index, index, index, index, f32) -> vector<4xf32>
    "vector.transfer_write"(%6, %5, %1, %1, %1, %1) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 4, 0>, permutation_map = #map}> : (vector<4xf32>, memref<?x8x?x128xf32>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

