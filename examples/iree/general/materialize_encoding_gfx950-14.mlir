#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree.encoding.resolver = #iree_gpu.gpu_encoding_resolver<>, iree_codegen.target_info = #iree_gpu.target<arch = "gfx950", features = "", wgp = <compute =  fp16, storage =  b16, subgroup =  none, scaled_mma = [<intrinsic = MFMA_SCALE_F32_32x32x64_B32, lhs_elem_type = f4E2M1FN, rhs_elem_type = f4E2M1FN, acc_elem_type = f32>], subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 163840, max_workgroup_counts = [2147483647, 2147483647, 2147483647], max_load_instruction_bits = 128, simds_per_wgp = 4, vgpr_space_bits = 16384>>}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d1, d2)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type =  scaled_matmul, element_types = [f4E2M1FN, f4E2M1FN, f8E8M0FNU, f8E8M0FNU, f32], user_indexing_maps = [#map, #map1, #map2, #map3, #map4], iteration_sizes = [?, ?, ?, 32]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : index, op_type =  scaled_matmul, element_types = [f4E2M1FN, f4E2M1FN, f8E8M0FNU, f8E8M0FNU, f32], user_indexing_maps = [#map, #map1, #map2, #map3, #map4], iteration_sizes = [?, ?, ?, 32]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : index, op_type =  scaled_matmul, element_types = [f4E2M1FN, f4E2M1FN, f8E8M0FNU, f8E8M0FNU, f32], user_indexing_maps = [#map, #map1, #map2, #map3, #map4], iteration_sizes = [?, ?, ?, 32]>
#encoding3 = #iree_encoding.encoding<operand_index = 3 : index, op_type =  scaled_matmul, element_types = [f4E2M1FN, f4E2M1FN, f8E8M0FNU, f8E8M0FNU, f32], user_indexing_maps = [#map, #map1, #map2, #map3, #map4], iteration_sizes = [?, ?, ?, 32]>
#encoding4 = #iree_encoding.encoding<operand_index = 4 : index, op_type =  scaled_matmul, element_types = [f4E2M1FN, f4E2M1FN, f8E8M0FNU, f8E8M0FNU, f32], user_indexing_maps = [#map, #map1, #map2, #map3, #map4], iteration_sizes = [?, ?, ?, 32]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x32xf4E2M1FN, #encoding>, tensor<?x?x32xf4E2M1FN, #encoding1>, tensor<?x?xf8E8M0FNU, #encoding2>, tensor<?x?xf8E8M0FNU, #encoding3>, tensor<?x?xf32, #encoding4>) -> tensor<?x?xf32, #encoding4>, sym_name = "scaled_matmul_lowering_f4_f4_f8_f8_f32_MFMA_SCALE_F32_32x32x64_B32"}> ({
  ^bb0(%arg0: tensor<?x?x32xf4E2M1FN, #encoding>, %arg1: tensor<?x?x32xf4E2M1FN, #encoding1>, %arg2: tensor<?x?xf8E8M0FNU, #encoding2>, %arg3: tensor<?x?xf8E8M0FNU, #encoding3>, %arg4: tensor<?x?xf32, #encoding4>):
    %0 = "linalg.generic"(%arg0, %arg1, %arg2, %arg3, %arg4) <{indexing_maps = [#map, #map1, #map2, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 4, 1>}> ({
    ^bb0(%arg5: f4E2M1FN, %arg6: f4E2M1FN, %arg7: f8E8M0FNU, %arg8: f8E8M0FNU, %arg9: f32):
      %1 = "arith.scaling_extf"(%arg5, %arg7) : (f4E2M1FN, f8E8M0FNU) -> f32
      %2 = "arith.scaling_extf"(%arg6, %arg8) : (f4E2M1FN, f8E8M0FNU) -> f32
      %3 = "arith.mulf"(%1, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %4 = "arith.addf"(%arg9, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%4) : (f32) -> ()
    }) : (tensor<?x?x32xf4E2M1FN, #encoding>, tensor<?x?x32xf4E2M1FN, #encoding1>, tensor<?x?xf8E8M0FNU, #encoding2>, tensor<?x?xf8E8M0FNU, #encoding3>, tensor<?x?xf32, #encoding4>) -> tensor<?x?xf32, #encoding4>
    "func.return"(%0) : (tensor<?x?xf32, #encoding4>) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

