#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "noexpand_dest_forall_notfullslicestore"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<34xf32>>
    %2 = "tensor.empty"() : () -> tensor<32xf32>
    %3 = "scf.forall"(%2) <{mapping = [#iree_codegen.workgroup_mapping<y>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 16>, staticUpperBound = array<i64: 32>}> ({
    ^bb0(%arg0: index, %arg1: tensor<32xf32>):
      %4 = "tensor.extract_slice"(%arg1, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<32xf32>, index) -> tensor<16xf32>
      %5 = "tensor.expand_shape"(%4) <{reassociation = [[0, 1]], static_output_shape = array<i64: 2, 8>}> : (tensor<16xf32>) -> tensor<2x8xf32>
      %6 = "util.optimization_barrier"(%5) : (tensor<2x8xf32>) -> tensor<2x8xf32>
      %7 = "tensor.collapse_shape"(%6) <{reassociation = [[0, 1]]}> : (tensor<2x8xf32>) -> tensor<16xf32>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%7, %arg1, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<16xf32>, tensor<32xf32>, index) -> ()
      }) : () -> ()
    }) : (tensor<32xf32>) -> tensor<32xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 1>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (tensor<32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<34xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

