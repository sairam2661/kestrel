#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {abi = "hip", iree.encoding.resolver = #iree_gpu.gpu_encoding_resolver<>, iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  fp64|fp32|fp16|int64|int32|int16|int8, storage =  b64|b32|b16|b8, subgroup =  shuffle|arithmetic, dot =  dp4xi8toi32, mma = [<MFMA_F32_16x16x16_BF16>, <MFMA_F32_32x32x8_BF16>, <MFMA_F32_16x16x32_F8E5M2FNUZ>, <MFMA_F32_16x16x32_F8E5M2FNUZ_F8E4M3FNUZ>, <MFMA_F32_16x16x32_F8E4M3FNUZ>, <MFMA_F32_16x16x32_F8E4M3FNUZ_F8E5M2FNUZ>, <MFMA_F32_32x32x16_F8E5M2FNUZ>, <MFMA_F32_32x32x16_F8E5M2FNUZ_F8E4M3FNUZ>, <MFMA_F32_32x32x16_F8E4M3FNUZ>, <MFMA_F32_32x32x16_F8E4M3FNUZ_F8E5M2FNUZ>, <MFMA_I32_16x16x32_I8>, <MFMA_I32_32x32x16_I8>, <MFMA_F64_16x16x4_F64>, <MFMA_F32_16x16x4_F32>, <MFMA_F32_16x16x16_F16>, <MFMA_F32_32x32x8_F16>], subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647], max_load_instruction_bits = 128, simds_per_wgp = 4, vgpr_space_bits = 16384>>, ukernels = "none"}>
#map = affine_map<()[s0] -> (s0 floordiv 32)>
#map1 = affine_map<()[s0, s1] -> (s0 + s1 * 32)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0)>
#map3 = affine_map<(d0, d1, d2, d3, d4) -> ()>
#map4 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d5, d0, d2, d3, d1)>
#map6 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d5, d0, d6, d7, d1)>
#map7 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d6, d7, d1, d4)>
#map8 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> ()>
#map9 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d2, d3, d6, d7)>
#map10 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [512, 1, 1] subgroup_size = 64, {iree_codegen.denormal_fp_math_f32 = #iree_codegen.denormal_fp_math<"preserve-sign">}>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "kernel", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "kernel", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index):
        %49:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg5) : (index) -> (index, index, index)
        "hal.return"(%49#0, %49#1, %49#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "kernel"}> ({
          %0 = "arith.constant"() <{value = 0.0721687824 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = 32 : index}> : () -> index
          %2 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
          %3 = "arith.constant"() <{value = 0 : index}> : () -> index
          %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
          %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
          %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
          %8 = "arith.index_castui"(%4) : (i32) -> index
          %9 = "arith.index_castui"(%5) : (i32) -> index
          %10 = "arith.index_castui"(%6) : (i32) -> index
          %11 = "arith.index_castui"(%7) : (i32) -> index
          %12:4 = "util.assume.int"(%8, %9, %10, %11) <{assumptions = [[#util.int.assumption<umin = 1982976, umax = 13880832>], [#util.int.assumption<umin = 1589760, umax = 11128320>], [#util.int.assumption<umin = 2376192, umax = 16633344>], [#util.int.assumption<umin = 32, umax = 224, udiv = 32>]]}> : (index, index, index, index) -> (index, index, index, index)
          %13 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<4xi64, #hal.descriptor_type<storage_buffer>>
          %14 = "amdgpu.fat_raw_buffer_cast"(%13) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>, resetOffset}> : (memref<4xi64, #hal.descriptor_type<storage_buffer>>) -> memref<4xi64, #amdgpu.address_space<fat_raw_buffer>>
          %15 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<f32, #hal.descriptor_type<storage_buffer>>
          %16 = "amdgpu.fat_raw_buffer_cast"(%15) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>, resetOffset}> : (memref<f32, #hal.descriptor_type<storage_buffer>>) -> memref<f32, #amdgpu.address_space<fat_raw_buffer>>
          %17 = "iree_tensor_ext.dispatch.workload.ordinal"(%12#3) <{ordinal = 0 : index}> : (index) -> index
          %18 = "hal.interface.binding.subspan"(%12#0, %17) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<192x4x?x4xf32, strided<[?, ?, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
          %19 = "hal.interface.binding.subspan"(%12#1, %17) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<192x4x?x4xf32, strided<[?, ?, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
          %20 = "hal.interface.binding.subspan"(%12#2, %17) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<4x?x4x192xf32, strided<[?, 768, 192, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
          %21 = "hal.interface.binding.subspan"(%3, %17) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<4x4x?x192xf32, #hal.descriptor_type<storage_buffer>>
          %22 = "iree_codegen.load_from_buffer"(%14) : (memref<4xi64, #amdgpu.address_space<fat_raw_buffer>>) -> tensor<4xi64>
          %23 = "iree_codegen.load_from_buffer"(%16) : (memref<f32, #amdgpu.address_space<fat_raw_buffer>>) -> tensor<f32>
          %24 = "affine.apply"(%17) <{map = #map}> : (index) -> index
          %25 = "tensor.empty"(%24, %24) : (index, index) -> tensor<4x?x32x?x32xf32>
          %26 = "linalg.generic"(%22, %23, %25) <{indexing_maps = [#map2, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg1: i64, %arg2: f32, %arg3: f32):
            %37 = "linalg.index"() <{dim = 4 : i64}> : () -> index
            %38 = "linalg.index"() <{dim = 3 : i64}> : () -> index
            %39 = "affine.apply"(%37, %38) <{map = #map1}> : (index, index) -> index
            %40 = "arith.index_cast"(%39) : (index) -> i64
            %41 = "arith.cmpi"(%40, %arg1) <{predicate = 5 : i64}> : (i64, i64) -> i1
            %42 = "linalg.index"() <{dim = 2 : i64}> : () -> index
            %43 = "linalg.index"() <{dim = 1 : i64}> : () -> index
            %44 = "affine.apply"(%42, %43) <{map = #map1}> : (index, index) -> index
            %45 = "arith.index_cast"(%44) : (index) -> i64
            %46 = "arith.cmpi"(%40, %45) <{predicate = 4 : i64}> : (i64, i64) -> i1
            %47 = "arith.ori"(%46, %41) : (i1, i1) -> i1
            %48 = "arith.select"(%47, %2, %arg2) : (i1, f32, f32) -> f32
            "linalg.yield"(%48) : (f32) -> ()
          }) : (tensor<4xi64>, tensor<f32>, tensor<4x?x32x?x32xf32>) -> tensor<4x?x32x?x32xf32>
          %27 = "arith.divsi"(%17, %1) : (index, index) -> index
          %28 = "memref.expand_shape"(%21, %24) <{reassociation = [[0], [1], [2, 3], [4]], static_output_shape = array<i64: 4, 4, -9223372036854775808, 32, 192>}> : (memref<4x4x?x192xf32, #hal.descriptor_type<storage_buffer>>, index) -> memref<4x4x?x32x192xf32, #hal.descriptor_type<storage_buffer>>
          %29 = "memref.expand_shape"(%18, %24) <{reassociation = [[0], [1], [2, 3], [4]], static_output_shape = array<i64: 192, 4, -9223372036854775808, 32, 4>}> : (memref<192x4x?x4xf32, strided<[?, ?, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, index) -> memref<192x4x?x32x4xf32, strided<[?, ?, 128, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
          %30 = "memref.expand_shape"(%20, %24) <{reassociation = [[0], [1, 2], [3], [4]], static_output_shape = array<i64: 4, -9223372036854775808, 32, 4, 192>}> : (memref<4x?x4x192xf32, strided<[?, 768, 192, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, index) -> memref<4x?x32x4x192xf32, strided<[?, 24576, 768, 192, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
          %31 = "memref.expand_shape"(%19, %24) <{reassociation = [[0], [1], [2, 3], [4]], static_output_shape = array<i64: 192, 4, -9223372036854775808, 32, 4>}> : (memref<192x4x?x4xf32, strided<[?, ?, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, index) -> memref<192x4x?x32x4xf32, strided<[?, ?, 128, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
          %32 = "iree_codegen.load_from_buffer"(%29) : (memref<192x4x?x32x4xf32, strided<[?, ?, 128, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>) -> tensor<192x4x?x32x4xf32>
          %33 = "iree_codegen.load_from_buffer"(%31) : (memref<192x4x?x32x4xf32, strided<[?, ?, 128, 4, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>) -> tensor<192x4x?x32x4xf32>
          %34 = "iree_codegen.load_from_buffer"(%30) : (memref<4x?x32x4x192xf32, strided<[?, 24576, 768, 192, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>) -> tensor<4x?x32x4x192xf32>
          %35 = "tensor.empty"(%24) : (index) -> tensor<4x4x?x32x192xf32>
          %36 = "iree_linalg_ext.attention"(%32, %33, %34, %0, %26, %35) <{decomposition_config = {pv_attrs = {lowering_config = #iree_gpu.lowering_config<{lane_basis = [[1, 1, 1, 1, 1, 8, 1, 8], [2, 3, 0, 1, 5, 6, 7]], subgroup_basis = [[1, 1, 1, 1, 1, 1, 2, 4], [0, 1, 2, 3, 5, 6, 7]], thread = [0, 0, 0, 0, 4, 0, 0]}>}, qk_attrs = {lowering_config = #iree_gpu.lowering_config<{lane_basis = [[1, 1, 1, 1, 1, 8, 1, 8], [2, 3, 0, 1, 5, 6, 7]], subgroup_basis = [[1, 1, 1, 1, 1, 1, 2, 4], [0, 1, 2, 3, 4, 6, 7]], thread = [0, 0, 0, 0, 4, 0, 0]}>}}, indexing_maps = [#map5, #map6, #map7, #map8, #map9, #map10]}> ({
          ^bb0(%arg0: f32):
            "iree_linalg_ext.yield"(%arg0) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{partial_reduction = [0, 0, 0, 0, 0, 0, 2, 32], workgroup = [1, 1, 1, 1, 64, 0, 0, 0]}>} : (tensor<192x4x?x32x4xf32>, tensor<192x4x?x32x4xf32>, tensor<4x?x32x4x192xf32>, f32, tensor<4x?x32x?x32xf32>, tensor<4x4x?x32x192xf32>) -> tensor<4x4x?x32x192xf32>
          "iree_codegen.store_to_buffer"(%36, %28) : (tensor<4x4x?x32x192xf32>, memref<4x4x?x32x192xf32, #hal.descriptor_type<storage_buffer>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

