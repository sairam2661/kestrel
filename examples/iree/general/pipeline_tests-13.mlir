#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", native_vector_size = 64 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 * 256 + d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "pooling_nchw_max_pack_without_padding_issue_20723"}> ({
    %0 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x64x1x256xf32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x1x1x8x1xf32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 8, 64, 1, 256>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8x64x1x256xf32>>) -> tensor<8x64x1x256xf32>
    %5 = "tensor.empty"() : () -> tensor<1x64x1x1x8x1xf32>
    %6 = "tensor.empty"() : () -> tensor<8x64x1x1xf32>
    %7 = "tensor.empty"() : () -> tensor<1x256xf32>
    %8 = "linalg.fill"(%0, %6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<8x64x1x1xf32>) -> tensor<8x64x1x1xf32>
    %9 = "linalg.pooling_nchw_max"(%4, %7, %8) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<[1, 256]> : vector<2xi64>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %11 = "arith.maximumf"(%arg2, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%11) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<8x64x1x256xf32>, tensor<1x256xf32>, tensor<8x64x1x1xf32>) -> tensor<8x64x1x1xf32>
    %10 = "linalg.pack"(%9, %5) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 0, 0>, outer_dims_perm = array<i64: 0, 1, 2, 3>, static_inner_tiles = array<i64: 8, 1>}> : (tensor<8x64x1x1xf32>, tensor<1x64x1x1x8x1xf32>) -> tensor<1x64x1x1x8x1xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 1, 64, 1, 1, 8, 1>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (tensor<1x64x1x1x8x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x1x1x8x1xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

