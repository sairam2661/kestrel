#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "matmul_map_scatter", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "matmul_map_scatter", sym_visibility = "public"}> ({
      ^bb0(%arg7: !hal.device):
        %24:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%24#0, %24#1, %24#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_map_scatter"}> ({
          %0 = "arith.constant"() <{value = true}> : () -> i1
          %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 0 : index}> : () -> index
          %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256x256xf16, #hal.descriptor_type<storage_buffer>>
          %4 = "amdgpu.fat_raw_buffer_cast"(%3) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>, resetOffset}> : (memref<256x256xf16, #hal.descriptor_type<storage_buffer>>) -> memref<256x256xf16, #amdgpu.address_space<fat_raw_buffer>>
          %5 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256x256xf16, #hal.descriptor_type<storage_buffer>>
          %6 = "amdgpu.fat_raw_buffer_cast"(%5) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>, resetOffset}> : (memref<256x256xf16, #hal.descriptor_type<storage_buffer>>) -> memref<256x256xf16, #amdgpu.address_space<fat_raw_buffer>>
          %7 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2x16x8x4x4x4x4xf32, #hal.descriptor_type<storage_buffer>>
          %8 = "amdgpu.fat_raw_buffer_cast"(%7) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>, resetOffset}> : (memref<2x16x8x4x4x4x4xf32, #hal.descriptor_type<storage_buffer>>) -> memref<2x16x8x4x4x4x4xf32, #amdgpu.address_space<fat_raw_buffer>>
          %9 = "iree_codegen.load_from_buffer"(%4) : (memref<256x256xf16, #amdgpu.address_space<fat_raw_buffer>>) -> tensor<256x256xf16>
          %10 = "iree_codegen.load_from_buffer"(%6) : (memref<256x256xf16, #amdgpu.address_space<fat_raw_buffer>>) -> tensor<256x256xf16>
          %11 = "tensor.empty"() : () -> tensor<256x256xf32>
          %12 = "linalg.fill"(%1, %11) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg5: f32, %arg6: f32):
            "linalg.yield"(%arg5) : (f32) -> ()
          }) : (f32, tensor<256x256xf32>) -> tensor<256x256xf32>
          %13 = "linalg.matmul"(%9, %10, %12) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg2: f16, %arg3: f16, %arg4: f32):
            %20 = "arith.extf"(%arg2) : (f16) -> f32
            %21 = "arith.extf"(%arg3) : (f16) -> f32
            %22 = "arith.mulf"(%20, %21) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %23 = "arith.addf"(%arg4, %22) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%23) : (f32) -> ()
          }) : (tensor<256x256xf16>, tensor<256x256xf16>, tensor<256x256xf32>) -> tensor<256x256xf32>
          %14 = "tensor.empty"() : () -> tensor<2x16x8x4x4x4x4xf32>
          %15 = "iree_linalg_ext.map_scatter"(%13, %14) ({
          ^bb0(%arg0: index, %arg1: index):
            %16:2 = "affine.delinearize_index"(%arg0) <{static_basis = array<i64: 2, 128>}> : (index) -> (index, index)
            %17:2 = "affine.delinearize_index"(%arg1) <{static_basis = array<i64: 16, 16>}> : (index) -> (index, index)
            %18:3 = "affine.delinearize_index"(%16#1) <{static_basis = array<i64: 4, 8, 4>}> : (index) -> (index, index, index)
            %19:2 = "affine.delinearize_index"(%17#1) <{static_basis = array<i64: 4, 4>}> : (index) -> (index, index)
            "iree_linalg_ext.yield"(%16#0, %17#0, %18#1, %19#1, %18#0, %18#2, %19#0, %0) : (index, index, index, index, index, index, index, i1) -> ()
          }) : (tensor<256x256xf32>, tensor<2x16x8x4x4x4x4xf32>) -> tensor<2x16x8x4x4x4x4xf32>
          "iree_codegen.store_to_buffer"(%15, %8) : (tensor<2x16x8x4x4x4x4xf32>, memref<2x16x8x4x4x4x4xf32, #amdgpu.address_space<fat_raw_buffer>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

