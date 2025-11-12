#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "expand_dest_forall_chained"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%1, %2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x64x32xf32>>
    %4 = "tensor.empty"(%2) : (index) -> tensor<?x64x32xf32>
    %5 = "tensor.empty"() : () -> tensor<32x32xf32>
    %6 = "scf.forall"(%4) <{mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 16, 16>, staticUpperBound = array<i64: 64, 32>}> ({
    ^bb0(%arg0: index, %arg1: index, %arg2: tensor<?x64x32xf32>):
      %7 = "tensor.extract_slice"(%arg2, %1, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 3, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 16, 16>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x64x32xf32>, index, index, index) -> tensor<1x16x16xf32>
      %8 = "tensor.expand_shape"(%7) <{reassociation = [[0], [1], [2, 3, 4]], static_output_shape = array<i64: 1, 16, 2, 4, 2>}> : (tensor<1x16x16xf32>) -> tensor<1x16x2x4x2xf32>
      %9 = "tensor.expand_shape"(%8) <{reassociation = [[0], [1, 2], [3], [4], [5]], static_output_shape = array<i64: 1, 8, 2, 2, 4, 2>}> : (tensor<1x16x2x4x2xf32>) -> tensor<1x8x2x2x4x2xf32>
      %10 = "util.optimization_barrier"(%9) : (tensor<1x8x2x2x4x2xf32>) -> tensor<1x8x2x2x4x2xf32>
      %11 = "tensor.collapse_shape"(%10) <{reassociation = [[0], [1, 2], [3], [4], [5]]}> : (tensor<1x8x2x2x4x2xf32>) -> tensor<1x16x2x4x2xf32>
      %12 = "tensor.collapse_shape"(%11) <{reassociation = [[0], [1], [2, 3, 4]]}> : (tensor<1x16x2x4x2xf32>) -> tensor<1x16x16xf32>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%12, %arg2, %1, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 16, 16>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x16x16xf32>, tensor<?x64x32xf32>, index, index, index) -> ()
      }) : () -> ()
    }) : (tensor<?x64x32xf32>) -> tensor<?x64x32xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %3, %2, %2) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 64, 32>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x64x32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x64x32xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

