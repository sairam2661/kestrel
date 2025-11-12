#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<3xf32>, vector<3xi1>) -> vector<3xf32>, sym_name = "scalarize_masked_vector_transfer_op"}> ({
  ^bb0(%arg0: vector<3xf32>, %arg1: vector<3xi1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<20xf32>
    %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<20xf32>
    %5 = "vector.transfer_read"(%3, %1, %2, %arg1) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 1, 1>, permutation_map = #map}> : (memref<20xf32>, index, f32, vector<3xi1>) -> vector<3xf32>
    "vector.transfer_write"(%arg0, %4, %1, %arg1) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 1, 1>, permutation_map = #map}> : (vector<3xf32>, memref<20xf32>, index, vector<3xi1>) -> ()
    "func.return"(%5) : (vector<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

