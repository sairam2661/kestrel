#map = affine_map<(d0, d1) -> (d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "resource_copy_dynamic_last_dim"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%2) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> memref<4096x?xf32>
    %4 = "hal.interface.binding.subspan"(%2) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> memref<4096x?xf32>
    %5 = "vector.transfer_read"(%3, %1, %1, %0) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (memref<4096x?xf32>, index, index, f32) -> vector<4xf32>
    "vector.transfer_write"(%5, %4, %1, %1) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map}> : (vector<4xf32>, memref<4096x?xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

