#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "interface_binding", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "interface_binding", sym_visibility = "public", workgroup_size = [32 : index, 1 : index, 1 : index]}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> f32, sym_name = "interface_binding"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8x5xf32, #spirv.storage_class<StorageBuffer>>
          %2 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<5xf32, #spirv.storage_class<StorageBuffer>>
          %3 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8x5xf32, #spirv.storage_class<StorageBuffer>>
          %4 = "memref.load"(%1, %0, %0) : (memref<8x5xf32, #spirv.storage_class<StorageBuffer>>, index, index) -> f32
          %5 = "memref.load"(%2, %0) : (memref<5xf32, #spirv.storage_class<StorageBuffer>>, index) -> f32
          %6 = "memref.load"(%3, %0, %0) : (memref<8x5xf32, #spirv.storage_class<StorageBuffer>>, index, index) -> f32
          %7 = "arith.addf"(%4, %5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %8 = "arith.addf"(%7, %6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "func.return"(%8) : (f32) -> ()
        }) : () -> ()
      }) {spirv.target_env = #spirv.target_env<#spirv.vce<v1.3, [Int64, Shader], []>, #spirv.resource_limits<>>} : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

