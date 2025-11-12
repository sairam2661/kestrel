#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "expand_dest_forall_multiresult"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x32xf32>>
    %4 = "tensor.empty"() : () -> tensor<32xf32>
    %5 = "tensor.empty"() : () -> tensor<32x32xf32>
    %6:2 = "scf.forall"(%5, %4) <{mapping = [#iree_codegen.workgroup_mapping<y>], operandSegmentSizes = array<i32: 0, 0, 0, 2>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 16>, staticUpperBound = array<i64: 32>}> ({
    ^bb0(%arg0: index, %arg1: tensor<32x32xf32>, %arg2: tensor<32xf32>):
      %7 = "tensor.extract_slice"(%arg2, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<32xf32>, index) -> tensor<16xf32>
      %8 = "tensor.expand_shape"(%7) <{reassociation = [[0, 1]], static_output_shape = array<i64: 2, 8>}> : (tensor<16xf32>) -> tensor<2x8xf32>
      %9 = "util.optimization_barrier"(%8) : (tensor<2x8xf32>) -> tensor<2x8xf32>
      %10 = "tensor.collapse_shape"(%9) <{reassociation = [[0, 1]]}> : (tensor<2x8xf32>) -> tensor<16xf32>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%arg1, %arg1, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (tensor<32x32xf32>, tensor<32x32xf32>, index, index) -> ()
        "tensor.parallel_insert_slice"(%10, %arg2, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<16xf32>, tensor<32xf32>, index) -> ()
      }) : () -> ()
    }) : (tensor<32x32xf32>, tensor<32xf32>) -> (tensor<32x32xf32>, tensor<32xf32>)
    "iree_tensor_ext.dispatch.tensor.store"(%6#1, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (tensor<32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%6#0, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (tensor<32x32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x32xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

