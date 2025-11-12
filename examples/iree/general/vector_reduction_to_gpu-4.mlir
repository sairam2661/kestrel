#map = affine_map<()[s0] -> (s0 * 4)>
#map1 = affine_map<(d0, d1) -> (0, d1)>
#map2 = affine_map<(d0, d1) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [64, 1, 1] subgroup_size = 64>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multirow"}> ({
    %0 = "arith.constant"() <{value = dense<0.000000e+00> : vector<4x512xf16>}> : () -> vector<4x512xf16>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = dense<0.000000e+00> : vector<1x4xf16>}> : () -> vector<1x4xf16>
    %3 = "arith.constant"() <{value = 4096 : index}> : () -> index
    %4 = "arith.constant"() <{value = 512 : index}> : () -> index
    %5 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %6 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
    %7 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1x4096xf16, #hal.descriptor_type<storage_buffer>>
    %8 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<32000x4096xf16, #hal.descriptor_type<storage_buffer>>
    %9 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1x32000xf16, #hal.descriptor_type<storage_buffer>>
    %10 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %11 = "affine.apply"(%10) <{map = #map}> : (index) -> index
    %12 = "scf.for"(%1, %3, %4, %0) ({
    ^bb0(%arg0: index, %arg1: vector<4x512xf16>):
      %16 = "vector.transfer_read"(%7, %1, %arg0, %5) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map1}> : (memref<1x4096xf16, #hal.descriptor_type<storage_buffer>>, index, index, f16) -> vector<4x512xf16>
      %17 = "vector.transfer_read"(%8, %11, %arg0, %5) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map2}> : (memref<32000x4096xf16, #hal.descriptor_type<storage_buffer>>, index, index, f16) -> vector<4x512xf16>
      %18 = "arith.mulf"(%16, %17) <{fastmath = #arith.fastmath<none>}> : (vector<4x512xf16>, vector<4x512xf16>) -> vector<4x512xf16>
      %19 = "arith.addf"(%arg1, %18) <{fastmath = #arith.fastmath<none>}> : (vector<4x512xf16>, vector<4x512xf16>) -> vector<4x512xf16>
      "scf.yield"(%19) : (vector<4x512xf16>) -> ()
    }) : (index, index, index, vector<4x512xf16>) -> vector<4x512xf16>
    %13 = "vector.broadcast"(%12) : (vector<4x512xf16>) -> vector<1x4x512xf16>
    %14 = "vector.multi_reduction"(%13, %2) <{kind = #vector.kind<add>, reduction_dims = array<i64: 2>}> : (vector<1x4x512xf16>, vector<1x4xf16>) -> vector<1x4xf16>
    %15 = "vector.extract"(%14) <{static_position = array<i64: 0>}> : (vector<1x4xf16>) -> vector<4xf16>
    "vector.transfer_write"(%15, %9, %1, %11) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map3}> : (vector<4xf16>, memref<1x32000xf16, #hal.descriptor_type<storage_buffer>>, index, index) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

