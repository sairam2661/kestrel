#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ext_fp8_dispatch"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "ext_fp8_dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device, %arg4: index, %arg5: index, %arg6: index):
        %11:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg4, %arg5, %arg6) : (index, index, index) -> (index, index, index)
        "hal.return"(%11#0, %11#1, %11#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "ext_fp8_dispatch"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096xf8E4M3FN>>
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096xf8E5M2>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096xf32>>
          %4 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4096>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096xf8E4M3FN>>) -> tensor<4096xf8E4M3FN>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4096>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096xf8E5M2>>) -> tensor<4096xf8E5M2>
          %6 = "tensor.empty"() : () -> tensor<4096xf32>
          %7 = "linalg.generic"(%4, %5, %6) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f8E4M3FN, %arg1: f8E5M2, %arg2: f32):
            %8 = "arith.extf"(%arg0) : (f8E4M3FN) -> f32
            %9 = "arith.extf"(%arg1) : (f8E5M2) -> f32
            %10 = "arith.addf"(%8, %9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%10) : (f32) -> ()
          }) : (tensor<4096xf8E4M3FN>, tensor<4096xf8E5M2>, tensor<4096xf32>) -> tensor<4096xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%7, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4096>, static_strides = array<i64: 1>}> : (tensor<4096xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

