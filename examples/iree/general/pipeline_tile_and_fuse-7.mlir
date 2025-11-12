#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [8, 4, 1] subgroup_size = 32>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "conv_nchw_fused", sym_visibility = "public"}> ({
      ^bb0(%arg8: !hal.device):
        %17:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%17#0, %17#1, %17#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "conv_nchw_fused"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<1x64xf32>}> : () -> tensor<1x64xf32>
          %2 = "arith.constant"() <{value = 0 : index}> : () -> index
          %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x58x58xf32>>
          %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64x3x3xf32>>
          %5 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x56x56xf32>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 64, 58, 58>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x58x58xf32>>) -> tensor<1x64x58x58xf32>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 64, 64, 3, 3>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64x3x3xf32>>) -> tensor<64x64x3x3xf32>
          %8 = "tensor.empty"() : () -> tensor<1x64x56x56xf32>
          %9 = "linalg.fill"(%0, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg6: f32, %arg7: f32):
            "linalg.yield"(%arg6) : (f32) -> ()
          }) : (f32, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
          %10 = "linalg.conv_2d_nchw_fchw"(%6, %7, %9) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : vector<2xi64>}> ({
          ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
            %15 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %16 = "arith.addf"(%arg5, %15) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%16) : (f32) -> ()
          }) {linalg.memoized_indexing_maps = [#map, #map1, #map2], lowering_config = #iree_gpu.lowering_config<{reduction = [0, 0, 0, 0, 1, 3, 3], thread = [1, 1, 1, 1, 0, 0, 0], workgroup = [1, 1, 4, 8, 0, 0, 0]}>} : (tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
          %11 = "linalg.generic"(%10, %1, %8) <{indexing_maps = [#map3, #map4, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %12 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %13 = "arith.cmpf"(%12, %0) <{fastmath = #arith.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
            %14 = "arith.select"(%13, %12, %0) : (i1, f32, f32) -> f32
            "linalg.yield"(%14) : (f32) -> ()
          }) : (tensor<1x64x56x56xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%11, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 64, 56, 56>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x64x56x56xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x56x56xf32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

