#map = affine_map<(d0, d1) -> (d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "resource_copy_with_assume_alignment"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4096x4096xf32>
    %3 = "memref.assume_alignment"(%2) <{alignment = 32 : i32}> : (memref<4096x4096xf32>) -> memref<4096x4096xf32>
    %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4096x4096xf32>
    %5 = "memref.assume_alignment"(%4) <{alignment = 32 : i32}> : (memref<4096x4096xf32>) -> memref<4096x4096xf32>
    %6 = "vector.transfer_read"(%3, %1, %1, %0) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (memref<4096x4096xf32>, index, index, f32) -> vector<4xf32>
    "vector.transfer_write"(%6, %5, %1, %1) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map}> : (vector<4xf32>, memref<4096x4096xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

