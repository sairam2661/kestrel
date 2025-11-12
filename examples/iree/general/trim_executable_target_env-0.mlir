#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.6, [Shader, Float64, Float16, Int64, Int16, Int8, GroupNonUniformArithmetic], [SPV_KHR_16bit_storage, SPV_KHR_8bit_storage, SPV_KHR_storage_buffer_storage_class]>, api=Vulkan, AMD:DiscreteGPU, #spirv.resource_limits<>>}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "predict_dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb0", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "predict_dispatch_0_vecmat_128x784_f32", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %2 = "arith.constant"() <{value = 2 : index}> : () -> index
        %3 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%2, %3, %3) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [Shader], [SPV_KHR_storage_buffer_storage_class]>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "predict_dispatch_0_vecmat_128x784_f32"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @predict_dispatch_0_vecmat_128x784_f32, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @predict_dispatch_0_vecmat_128x784_f32, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) {spirv.target_env = #spirv.target_env<#spirv.vce<v1.6, [Shader, Float64, Float16, Int64, Int16, Int8], [SPV_KHR_16bit_storage, SPV_KHR_8bit_storage, SPV_KHR_storage_buffer_storage_class]>, api=Vulkan, AMD:DiscreteGPU, #spirv.resource_limits<>>} : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "predict_dispatch_1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb1", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "predict_dispatch_1_vecmat_10x128_f32", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 10 : index}> : () -> index
        %1 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %1, %1) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.3, [Shader, GroupNonUniformArithmetic], [SPV_KHR_storage_buffer_storage_class]>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "predict_dispatch_1_vecmat_10x128_f32"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @predict_dispatch_1_vecmat_10x128_f32, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @predict_dispatch_1_vecmat_10x128_f32, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) {spirv.target_env = #spirv.target_env<#spirv.vce<v1.6, [Shader, Float64, Float16, Int64, Int16, Int8], [SPV_KHR_16bit_storage, SPV_KHR_8bit_storage, SPV_KHR_storage_buffer_storage_class]>, api=Vulkan, AMD:DiscreteGPU, #spirv.resource_limits<>>} : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

