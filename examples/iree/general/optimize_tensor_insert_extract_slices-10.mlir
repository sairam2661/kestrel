#map = affine_map<(d0, d1, d2, d3, d4) -> (d3, d4)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDataTiling>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "_batch_matmul_narrow_n_2_dispatch_4_unpack_i32"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 128 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x1x2x8xi32>>
    %5 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x3x2xi32>>
    %6 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %7 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    "scf.for"(%6, %1, %7) ({
    ^bb0(%arg0: index):
      %8 = "iree_tensor_ext.dispatch.tensor.load"(%5, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0, 0>, static_sizes = array<i64: 1, 3, 2>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x3x2xi32>>, index) -> tensor<1x3x2xi32>
      %9 = "iree_tensor_ext.dispatch.tensor.load"(%4, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0, 0, 0, 0>, static_sizes = array<i64: 1, 1, 1, 2, 8>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x1x2x8xi32>>, index) -> tensor<1x1x1x2x8xi32>
      %10 = "vector.transfer_read"(%9, %3, %3, %3, %3, %3, %0) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 5, 1, 0>, permutation_map = #map}> : (tensor<1x1x1x2x8xi32>, index, index, index, index, index, i32) -> vector<2x8xi32>
      %11 = "vector.transpose"(%10) <{permutation = array<i64: 1, 0>}> : (vector<2x8xi32>) -> vector<8x2xi32>
      %12 = "tensor.empty"() : () -> tensor<3x2xi32>
      %13 = "vector.transfer_write"(%11, %12, %3, %3) <{in_bounds = [false, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map1}> : (vector<8x2xi32>, tensor<3x2xi32>, index, index) -> tensor<3x2xi32>
      %14 = "tensor.insert_slice"(%13, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 3, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<3x2xi32>, tensor<1x3x2xi32>) -> tensor<1x3x2xi32>
      "iree_tensor_ext.dispatch.tensor.store"(%14, %5, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0, 0>, static_sizes = array<i64: 1, 3, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x3x2xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x3x2xi32>>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

