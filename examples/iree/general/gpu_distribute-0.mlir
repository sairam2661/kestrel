#map = affine_map<()[s0] -> (s0 * 256)>
#map1 = affine_map<(d0, d1)[s0] -> (d0 * 1024 + s0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0, d1) -> (d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorize workgroup_size = [64, 1, 1]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "add_tensor"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 64 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<233x1024xf32>
    %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<233x1024xf32>
    %5 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<233x1024xf32>
    %6 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %7 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %8 = "affine.apply"(%6) <{map = #map}> : (index) -> index
    %9 = "memref.subview"(%5, %7, %8) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 256>, static_strides = array<i64: 1, 1>}> : (memref<233x1024xf32>, index, index) -> memref<1x256xf32, #map1>
    %10 = "memref.subview"(%3, %7, %8) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 256>, static_strides = array<i64: 1, 1>}> : (memref<233x1024xf32>, index, index) -> memref<1x256xf32, #map1>
    %11 = "memref.subview"(%4, %7, %8) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 256>, static_strides = array<i64: 1, 1>}> : (memref<233x1024xf32>, index, index) -> memref<1x256xf32, #map1>
    "scf.forall"(%1) <{mapping = [#gpu.thread<x>], operandSegmentSizes = array<i32: 0, 1, 0, 0>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
    ^bb0(%arg0: index):
      %12 = "affine.apply"(%arg0) <{map = #map2}> : (index) -> index
      %13 = "memref.subview"(%9, %12) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, 4>, static_strides = array<i64: 1, 1>}> : (memref<1x256xf32, #map1>, index) -> memref<1x4xf32, #map1>
      %14 = "vector.transfer_read"(%10, %2, %12, %0) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map3}> : (memref<1x256xf32, #map1>, index, index, f32) -> vector<4xf32>
      %15 = "vector.transfer_read"(%11, %2, %12, %0) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map3}> : (memref<1x256xf32, #map1>, index, index, f32) -> vector<4xf32>
      %16 = "arith.addf"(%14, %15) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      "vector.transfer_write"(%16, %13, %2, %2) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map3}> : (vector<4xf32>, memref<1x4xf32, #map1>, index, index) -> ()
      "scf.forall.in_parallel"() ({
      ^bb0:
      }) : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

