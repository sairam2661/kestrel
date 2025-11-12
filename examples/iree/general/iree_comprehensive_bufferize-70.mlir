#map = affine_map<(d0) -> (d0 * 8)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "check_no_alloc"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 256 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x16xf16>>
    %5 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi32>>
    %6 = "hal.interface.binding.subspan"(%1, %3) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x16xf16>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 8, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8x16xf16>>) -> tensor<8x16xf16>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi32>>) -> tensor<8xi32>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%6, %3, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x16xf16>>, index, index) -> tensor<?x16xf16>
    %10 = "scf.forall"(%9) <{mapping = [#iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: 2>}> ({
    ^bb0(%arg0: index, %arg1: tensor<?x16xf16>):
      %11 = "affine.apply"(%arg0) <{map = #map}> : (index) -> index
      %12 = "tensor.extract_slice"(%arg1, %11, %3) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, 8>, static_strides = array<i64: 1, 1>}> : (tensor<?x16xf16>, index, index) -> tensor<?x8xf16>
      %13 = "scf.forall"(%12) <{mapping = [#gpu.thread<linear_dim_1>, #gpu.thread<linear_dim_0>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 1, 1>, staticUpperBound = array<i64: 8, 1>}> ({
      ^bb0(%arg2: index, %arg3: index, %arg4: tensor<?x8xf16>):
        %14 = "tensor.extract_slice"(%7, %arg2, %11) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 8>, static_strides = array<i64: 1, 1>}> : (tensor<8x16xf16>, index, index) -> tensor<1x8xf16>
        %15 = "tensor.extract_slice"(%8, %arg2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<8xi32>, index) -> tensor<1xi32>
        %16 = "iree_linalg_ext.scatter"(%14, %15, %arg4) <{dimension_map = array<i64: 0>, operandSegmentSizes = array<i32: 2, 1>, unique_indices = true}> ({
        ^bb0(%arg5: f16, %arg6: f16):
          "iree_linalg_ext.yield"(%arg5) : (f16) -> ()
        }) : (tensor<1x8xf16>, tensor<1xi32>, tensor<?x8xf16>) -> tensor<?x8xf16>
        "scf.forall.in_parallel"() ({
          "tensor.parallel_insert_slice"(%16, %arg4, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 8>, static_strides = array<i64: 1, 1>}> : (tensor<?x8xf16>, tensor<?x8xf16>, index) -> ()
        }) : () -> ()
      }) : (tensor<?x8xf16>) -> tensor<?x8xf16>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%13, %arg1, %11, %3) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, 8>, static_strides = array<i64: 1, 1>}> : (tensor<?x8xf16>, tensor<?x16xf16>, index, index) -> ()
      }) : () -> ()
    }) : (tensor<?x16xf16>) -> tensor<?x16xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %6, %3, %3) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 16>, static_strides = array<i64: 1, 1>}> : (tensor<?x16xf16>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x16xf16>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

