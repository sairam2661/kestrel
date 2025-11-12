#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "noexpand_dest_forall_dynamicpacked"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>
    %6 = "tensor.empty"() : () -> tensor<32xf32>
    %7 = "scf.forall"(%6) <{mapping = [#iree_codegen.workgroup_mapping<y>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 16>, staticUpperBound = array<i64: 32>}> ({
    ^bb0(%arg0: index, %arg1: tensor<32xf32>):
      %8 = "tensor.extract_slice"(%arg1, %arg0, %0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<32xf32>, index, index) -> tensor<?xf32>
      %9 = "tensor.expand_shape"(%8, %1, %2) <{reassociation = [[0, 1]], static_output_shape = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?xf32>, index, index) -> tensor<?x?xf32>
      %10 = "util.optimization_barrier"(%9) : (tensor<?x?xf32>) -> tensor<?x?xf32>
      %11 = "tensor.collapse_shape"(%10) <{reassociation = [[0, 1]]}> : (tensor<?x?xf32>) -> tensor<?xf32>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%11, %arg1, %arg0, %0) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf32>, tensor<32xf32>, index, index) -> ()
      }) : () -> ()
    }) : (tensor<32xf32>) -> tensor<32xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%7, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (tensor<32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

