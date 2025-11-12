#map = affine_map<(d0, d1) -> (d1)>
#map1 = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [32, 1, 1] subgroup_size = 32>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "shared_memory_copy"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = dense<0.000000e+00> : vector<1xf32>}> : () -> vector<1xf32>
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 32 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128x32xf32>
    %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128x32xf32>
    %6 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %7 = "memref.alloc"() <{alignment = 64 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32xf32, #gpu.address_space<workgroup>>
    %8 = "vector.transfer_read"(%4, %6, %0, %2) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (memref<128x32xf32>, index, index, f32) -> vector<32xf32>
    "vector.transfer_write"(%8, %7, %0) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map1}> : (vector<32xf32>, memref<32xf32, #gpu.address_space<workgroup>>, index) -> ()
    "gpu.barrier"() : () -> ()
    %9 = "vector.transfer_read"(%7, %0, %2) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map1}> : (memref<32xf32, #gpu.address_space<workgroup>>, index, f32) -> vector<32xf32>
    "vector.transfer_write"(%9, %5, %6, %0) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map}> : (vector<32xf32>, memref<128x32xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

