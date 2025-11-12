#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "bufferize_with_thread_private_memory"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %2 = "arith.constant"() <{value = dense<0.000000e+00> : vector<1x1x4x4xf16>}> : () -> vector<1x1x4x4xf16>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<320xf16>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x320x64x64xf16>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%4, %arg0, %arg0, %arg0, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 4, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 8, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x320x64x64xf16>>, index, index, index, index) -> tensor<1x1x8x64xf16>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<320xf16>>, index) -> tensor<1xf16>
    %7 = "scf.forall"(%5) <{mapping = [#gpu.thread<y>, #gpu.thread<x>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 1, 1>, staticUpperBound = array<i64: 2, 16>}> ({
    ^bb0(%arg1: index, %arg2: index, %arg3: tensor<1x1x8x64xf16>):
      %8 = "affine.apply"(%arg1) <{map = #map}> : (index) -> index
      %9 = "affine.apply"(%arg2) <{map = #map}> : (index) -> index
      %10 = "tensor.extract_slice"(%arg3, %8, %9) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: 0, 0, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 4, 4>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x1x8x64xf16>, index, index) -> tensor<1x1x4x4xf16>
      %11 = "bufferization.alloc_tensor"() <{operandSegmentSizes = array<i32: 0, 0, 0>}> : () -> tensor<1x1x4x4xf16>
      %12 = "bufferization.materialize_in_destination"(%10, %11) : (tensor<1x1x4x4xf16>, tensor<1x1x4x4xf16>) -> tensor<1x1x4x4xf16>
      %13 = "vector.transfer_read"(%6, %0, %1) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map1}> : (tensor<1xf16>, index, f16) -> vector<1xf16>
      %14 = "vector.broadcast"(%13) : (vector<1xf16>) -> vector<1x1x4x4xf16>
      %15 = "vector.transfer_read"(%arg3, %0, %0, %8, %9, %1) <{in_bounds = [true, true, true, true], operandSegmentSizes = array<i32: 1, 4, 1, 0>, permutation_map = #map2}> : (tensor<1x1x8x64xf16>, index, index, index, index, f16) -> vector<1x1x4x4xf16>
      %16 = "arith.addf"(%15, %14) <{fastmath = #arith.fastmath<none>}> : (vector<1x1x4x4xf16>, vector<1x1x4x4xf16>) -> vector<1x1x4x4xf16>
      %17 = "vector.transfer_write"(%16, %12, %0, %0, %0, %0) <{in_bounds = [true, true, true, true], operandSegmentSizes = array<i32: 1, 1, 4, 0>, permutation_map = #map2}> : (vector<1x1x4x4xf16>, tensor<1x1x4x4xf16>, index, index, index, index) -> tensor<1x1x4x4xf16>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%17, %arg3, %8, %9) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 0>, static_offsets = array<i64: 0, 0, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 4, 4>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x1x4x4xf16>, tensor<1x1x8x64xf16>, index, index) -> ()
      }) : () -> ()
    }) : (tensor<1x1x8x64xf16>) -> tensor<1x1x8x64xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%7, %4, %arg0, %arg0, %arg0, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 4, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 8, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x1x8x64xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x320x64x64xf16>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

