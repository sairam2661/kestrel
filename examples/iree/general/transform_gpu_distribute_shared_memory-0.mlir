#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [32, 4, 1]>
"builtin.module"() ({
  "memref.global"() <{sym_name = "__shared_memory__", sym_visibility = "private", type = memref<64x16xf32, #gpu.address_space<workgroup>>}> : () -> ()
  "func.func"() <{function_type = (memref<64x16xf32, #hal.descriptor_type<storage_buffer>>) -> (), sym_name = "shared_mem_cpy"}> ({
  ^bb0(%arg1: memref<64x16xf32, #hal.descriptor_type<storage_buffer>>):
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "affine.apply"(%1) <{map = #map}> : (index) -> index
    %3 = "memref.get_global"() <{name = @__shared_memory__}> : () -> memref<64x16xf32, #gpu.address_space<workgroup>>
    "gpu.barrier"() : () -> ()
    "linalg.generic"(%arg1, %3) <{indexing_maps = [#map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg4: f32, %arg5: f32):
      "linalg.yield"(%arg4) : (f32) -> ()
    }) : (memref<64x16xf32, #hal.descriptor_type<storage_buffer>>, memref<64x16xf32, #gpu.address_space<workgroup>>) -> ()
    "linalg.generic"(%3, %3) <{indexing_maps = [#map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      %4 = "arith.addf"(%arg2, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%4) : (f32) -> ()
    }) : (memref<64x16xf32, #gpu.address_space<workgroup>>, memref<64x16xf32, #gpu.address_space<workgroup>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_cuda_nvptx_fb, translation_info = #translation} : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
    "transform.iree.gpu_distribute_shared_memory_copy"(%0) : (!transform.any_op) -> ()
    "transform.apply_patterns"(%0) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
      "transform.apply_patterns.memref.fold_memref_alias_ops"() : () -> ()
      "transform.apply_patterns.canonicalization"() : () -> ()
      "transform.apply_patterns.linalg.tiling_canonicalization"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.apply_cse"(%0) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

