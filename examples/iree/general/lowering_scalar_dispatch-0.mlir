#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "scalar_dispatch"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "scalar_dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %10 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%10, %10, %10) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "scalar_dispatch"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 6364136223846793005 : i64}> : () -> i64
          %2 = "arith.constant"() <{value = 1442695040888963407 : i64}> : () -> i64
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<i64>>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<i64>>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<i64>>) -> tensor<i64>
          %6 = "tensor.extract"(%5) : (tensor<i64>) -> i64
          %7 = "arith.muli"(%6, %1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
          %8 = "arith.addi"(%7, %2) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
          %9 = "tensor.insert"(%8, %5) : (i64, tensor<i64>) -> tensor<i64>
          "iree_tensor_ext.dispatch.tensor.store"(%9, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (tensor<i64>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<i64>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

