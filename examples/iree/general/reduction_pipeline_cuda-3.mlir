#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "softmax_singlesubgroup"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "softmax_singlesubgroup", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index):
        %9:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg1, %arg2) : (index, index) -> (index, index, index)
        "hal.return"(%9#0, %9#1, %9#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "softmax_singlesubgroup"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = -3.40282347E+38 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %3 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<12x256x40960xf32>>
          %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<12x256x40960xf32>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 12, 256, 40960>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<12x256x40960xf32>>) -> tensor<12x256x40960xf32>
          %7 = "tensor.empty"() : () -> tensor<12x256x40960xf32>
          %8 = "linalg.softmax"(%6, %7) <{dimension = 2 : i64}> : (tensor<12x256x40960xf32>, tensor<12x256x40960xf32>) -> tensor<12x256x40960xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%8, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 12, 256, 40960>, static_strides = array<i64: 1, 1, 1>}> : (tensor<12x256x40960xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<12x256x40960xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

