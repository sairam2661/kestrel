#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "resource_bindings_in_same_func", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "resource_bindings_in_same_func", sym_visibility = "public", workgroup_size = [32 : index, 1 : index, 1 : index]}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> f32, sym_name = "resource_bindings_in_same_entry_func"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x4xf32, #spirv.storage_class<StorageBuffer>>
          %2 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x4xf32, #spirv.storage_class<StorageBuffer>>
          %3 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x4xf32, #spirv.storage_class<StorageBuffer>>
          %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4xvector<4xf32>, #spirv.storage_class<StorageBuffer>>
          %5 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x4xf32, #spirv.storage_class<StorageBuffer>>
          %6 = "memref.load"(%1, %0, %0) : (memref<4x4xf32, #spirv.storage_class<StorageBuffer>>, index, index) -> f32
          %7 = "memref.load"(%2, %0, %0) : (memref<4x4xf32, #spirv.storage_class<StorageBuffer>>, index, index) -> f32
          %8 = "memref.load"(%3, %0, %0) : (memref<4x4xf32, #spirv.storage_class<StorageBuffer>>, index, index) -> f32
          %9 = "memref.load"(%4, %0) : (memref<4xvector<4xf32>, #spirv.storage_class<StorageBuffer>>, index) -> vector<4xf32>
          %10 = "memref.load"(%5, %0, %0) : (memref<4x4xf32, #spirv.storage_class<StorageBuffer>>, index, index) -> f32
          %11 = "arith.addf"(%6, %7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %12 = "arith.addf"(%8, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %13 = "arith.addf"(%11, %12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %14 = "vector.extract"(%9, %0) <{static_position = array<i64: -9223372036854775808>}> : (vector<4xf32>, index) -> f32
          %15 = "arith.addf"(%13, %14) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "func.return"(%15) : (f32) -> ()
        }) : () -> ()
      }) {spirv.target_env = #spirv.target_env<#spirv.vce<v1.3, [Int64, Shader], []>, #spirv.resource_limits<>>} : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

