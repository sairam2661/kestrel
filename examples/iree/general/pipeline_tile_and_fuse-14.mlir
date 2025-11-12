#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [32, 1, 1] subgroup_size = 32>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "elemwise_reduction_elemwise", sym_visibility = "public"}> ({
      ^bb0(%arg13: !hal.device):
        %34:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%34#0, %34#1, %34#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "elemwise_reduction_elemwise"}> ({
          %0 = "arith.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 0 : index}> : () -> index
          %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x9x9xi8>>
          %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xi8>>
          %5 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x9x9xf32>>
          %6 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>
          %7 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>
          %8 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>
          %9 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x16x9x9xi8>>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 32, 16, 9, 9>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x9x9xi8>>) -> tensor<32x16x9x9xi8>
          %11 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32xi8>>) -> tensor<32xi8>
          %12 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 32, 16, 9, 9>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16x9x9xf32>>) -> tensor<32x16x9x9xf32>
          %13 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>) -> tensor<32x16xf32>
          %14 = "iree_tensor_ext.dispatch.tensor.load"(%7) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>) -> tensor<32x16xf32>
          %15 = "iree_tensor_ext.dispatch.tensor.load"(%8) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>) -> tensor<32x16xf32>
          %16 = "tensor.empty"() : () -> tensor<32x16x9x9xi8>
          %17 = "tensor.empty"() : () -> tensor<32xf32>
          %18 = "tensor.empty"() : () -> tensor<32x16x9x9xf32>
          %19 = "linalg.fill"(%1, %17) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg11: f32, %arg12: f32):
            "linalg.yield"(%arg11) : (f32) -> ()
          }) : (f32, tensor<32xf32>) -> tensor<32xf32>
          %20 = "linalg.generic"(%10, %18) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg9: i8, %arg10: f32):
            %31 = "arith.extsi"(%arg9) : (i8) -> i32
            %32 = "arith.sitofp"(%31) : (i32) -> f32
            %33 = "arith.mulf"(%32, %0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%33) : (f32) -> ()
          }) : (tensor<32x16x9x9xi8>, tensor<32x16x9x9xf32>) -> tensor<32x16x9x9xf32>
          %21 = "linalg.generic"(%20, %11, %19) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg6: f32, %arg7: i8, %arg8: f32):
            %28 = "arith.sitofp"(%arg7) : (i8) -> f32
            %29 = "arith.addf"(%arg6, %28) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %30 = "arith.mulf"(%29, %arg8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%30) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{reduction = [0, 1, 3, 3], thread = [1, 0, 0, 0], workgroup = [32, 0, 0, 0]}>} : (tensor<32x16x9x9xf32>, tensor<32xi8>, tensor<32xf32>) -> tensor<32xf32>
          %22 = "linalg.generic"(%12, %13, %21, %14, %15, %16) <{indexing_maps = [#map, #map2, #map1, #map2, #map2, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 5, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: i8):
            %23 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %24 = "arith.addf"(%23, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %25 = "arith.addf"(%24, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %26 = "arith.addf"(%25, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %27 = "arith.fptosi"(%26) : (f32) -> i8
            "linalg.yield"(%27) : (i8) -> ()
          }) : (tensor<32x16x9x9xf32>, tensor<32x16xf32>, tensor<32xf32>, tensor<32x16xf32>, tensor<32x16xf32>, tensor<32x16x9x9xi8>) -> tensor<32x16x9x9xi8>
          "iree_tensor_ext.dispatch.tensor.store"(%22, %9) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 32, 16, 9, 9>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<32x16x9x9xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x16x9x9xi8>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

