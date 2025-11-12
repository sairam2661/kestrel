#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {abi = "hip", iree.encoding.resolver = #iree_gpu.gpu_padding_resolver<>, iree_codegen.target_info = #iree_gpu.target<arch = "gfx1100", features = "", wgp = <compute =  fp32, storage =  b32, subgroup =  arithmetic, subgroup_size_choices = [32, 64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "set_pad_encoding_and_store_with_unresolved_encodings_from_executable"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "arith.index_castui"(%1) : (i32) -> index
    %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2048x2048xf16>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2048x2048xf16, #iree_encoding.padding<[0, ?]>>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2048, 2048>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2048x2048xf16>>) -> tensor<2048x2048xf16>
    %6 = "iree_encoding.set_encoding"(%5) : (tensor<2048x2048xf16>) -> tensor<2048x2048xf16, #iree_encoding.padding<[0, ?]>>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2048, 2048>, static_strides = array<i64: 1, 1>}> : (tensor<2048x2048xf16, #iree_encoding.padding<[0, ?]>>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2048x2048xf16, #iree_encoding.padding<[0, ?]>>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

