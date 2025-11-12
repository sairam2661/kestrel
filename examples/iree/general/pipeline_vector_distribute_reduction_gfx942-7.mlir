#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d5, d1, d6, d4)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d5, d1, d6, d3)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> ()>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d5, d6)>
#map6 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [256, 1, 1] subgroup_size = 64>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "attention_4xDx1x32x128xf16", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "attention_4xDx1x32x128xf16", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device, %arg3: index):
        %31:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg3) : (index) -> (index, index, index)
        "hal.return"(%31#0, %31#1, %31#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "attention_4xDx1x32x128xf16"}> ({
          %0 = "arith.constant"() <{value = 8.837890e-02 : f16}> : () -> f16
          %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
          %2 = "arith.constant"() <{value = 0xFC00 : f16}> : () -> f16
          %3 = "arith.constant"() <{value = 32 : index}> : () -> index
          %4 = "arith.constant"() <{value = 0 : index}> : () -> index
          %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %6 = "arith.index_castui"(%5) : (i32) -> index
          %7 = "util.assume.int"(%6) <{assumptions = [[#util.int.assumption<umin = 1, umax = 512>]]}> : (index) -> index
          %8 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x1x2x1x32x128xf16>>
          %9 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1x1x128xf16>>
          %10 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 4 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x1x1x128xf16>>
          %11 = "iree_tensor_ext.dispatch.workload.ordinal"(%7) <{ordinal = 0 : index}> : (index) -> index
          %12 = "hal.interface.binding.subspan"(%4, %11) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> {iree_gpu.use_rocdl_buffer_instructions} : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x?xi64>>
          %13 = "hal.interface.binding.subspan"(%4, %11) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> {iree_gpu.use_rocdl_buffer_instructions} : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x?xi64>>
          %14 = "iree_tensor_ext.dispatch.tensor.load"(%12, %11, %11) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x?xi64>>, index, index) -> tensor<4x?xi64>
          %15 = "iree_tensor_ext.dispatch.tensor.load"(%13, %11, %11) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x?xi64>>, index, index) -> tensor<4x?xi64>
          %16 = "iree_tensor_ext.dispatch.tensor.load"(%9) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 4, 1, 1, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1x1x128xf16>>) -> tensor<4x1x1x128xf16>
          %17 = "tensor.empty"() : () -> tensor<4x1x1x128xf16>
          %18 = "tensor.empty"(%11) : (index) -> tensor<4x1x1x?x32xf16>
          %19 = "tensor.empty"(%11) : (index) -> tensor<4x?x1x32x128xf16>
          %20 = "iree_tensor_ext.dispatch.tensor.load"(%8) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 4096, 1, 1, 1, 32, 128>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x1x2x1x32x128xf16>>) -> tensor<4096x1x32x128xf16>
          %21 = "iree_linalg_ext.gather"(%20, %14, %19) <{dimension_map = array<i64: 0>, operandSegmentSizes = array<i32: 2, 1>}> : (tensor<4096x1x32x128xf16>, tensor<4x?xi64>, tensor<4x?x1x32x128xf16>) -> tensor<4x?x1x32x128xf16>
          %22 = "iree_linalg_ext.gather"(%20, %15, %19) <{dimension_map = array<i64: 0>, operandSegmentSizes = array<i32: 2, 1>}> : (tensor<4096x1x32x128xf16>, tensor<4x?xi64>, tensor<4x?x1x32x128xf16>) -> tensor<4x?x1x32x128xf16>
          %23 = "linalg.generic"(%18) <{indexing_maps = [#map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 0, 1>}> ({
          ^bb0(%arg1: f16):
            %25 = "linalg.index"() <{dim = 4 : i64}> : () -> index
            %26 = "linalg.index"() <{dim = 3 : i64}> : () -> index
            %27 = "arith.muli"(%26, %3) <{overflowFlags = #arith.overflow<nsw>}> : (index, index) -> index
            %28 = "arith.addi"(%25, %27) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            %29 = "arith.cmpi"(%28, %4) <{predicate = 3 : i64}> : (index, index) -> i1
            %30 = "arith.select"(%29, %1, %2) : (i1, f16, f16) -> f16
            "linalg.yield"(%30) : (f16) -> ()
          }) : (tensor<4x1x1x?x32xf16>) -> tensor<4x1x1x?x32xf16>
          %24 = "iree_linalg_ext.attention"(%16, %21, %22, %0, %23, %17) <{decomposition_config = {pv_attrs = {lowering_config = #iree_gpu.lowering_config<{lane_basis = [[1, 1, 1, 1, 1, 2, 32], [2, 1, 0, 4, 5, 6]], subgroup_basis = [[1, 1, 1, 1, 1, 4, 1], [4, 3, 2, 1, 5, 6]], thread = [0, 0, 0, 8, 0, 0]}>}, qk_attrs = {lowering_config = #iree_gpu.lowering_config<{lane_basis = [[1, 1, 1, 1, 1, 2, 32], [2, 1, 0, 4, 5, 6]], subgroup_basis = [[1, 1, 1, 1, 1, 4, 1], [4, 3, 2, 1, 5, 6]], thread = [0, 0, 0, 8, 0, 0]}>}}, indexing_maps = [#map1, #map2, #map3, #map4, #map5, #map6]}> ({
          ^bb0(%arg0: f32):
            "iree_linalg_ext.yield"(%arg0) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{partial_reduction = [0, 0, 0, 0, 0, 8, 0], workgroup = [1, 1, 1, 0, 0, 0, 0]}>} : (tensor<4x1x1x128xf16>, tensor<4x?x1x32x128xf16>, tensor<4x?x1x32x128xf16>, f16, tensor<4x1x1x?x32xf16>, tensor<4x1x1x128xf16>) -> tensor<4x1x1x128xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%24, %10) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 4, 1, 1, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<4x1x1x128xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x1x1x128xf16>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

