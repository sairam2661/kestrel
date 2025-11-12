#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [Shader, GroupNonUniform], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb1 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [GroupNonUniformShuffle, GroupNonUniformArithmetic], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb2 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [UniformAndStorageBuffer8BitAccess, StorageBuffer8BitAccess], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb3 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [StorageBuffer16BitAccess, StorageUniform16], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb4 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [Int64, Int16, Int8], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb5 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [Float16, Float64], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb6 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [DotProduct, DotProductInput4x8Bit], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb7 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.0, [CooperativeMatrixKHR], []>, #spirv.resource_limits<>>}>
#executable_target_vulkan_spirv_fb_ptr = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb-ptr", {spirv.target_env = #spirv.target_env<#spirv.vce<v1.5, [Int64, PhysicalStorageBufferAddresses], [SPV_KHR_physical_storage_buffer]>, #spirv.resource_limits<>>}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dispatch_executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "test_assumed_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_assumed_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg8: !hal.device):
        %8 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%8, %8, %8) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [Shader], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_assumed_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_assumed_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_assumed_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_subgroup_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb1}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_subgroup_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg7: !hal.device):
        %7 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%7, %7, %7) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [GroupNonUniformShuffle, GroupNonUniformArithmetic], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_subgroup_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_subgroup_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_subgroup_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_8bit_storage_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb2}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_8bit_storage_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg6: !hal.device):
        %6 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%6, %6, %6) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [UniformAndStorageBuffer8BitAccess, StorageBuffer8BitAccess], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_8bit_storage_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_8bit_storage_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_8bit_storage_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_16bit_storage_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb3}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_16bit_storage_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device):
        %5 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%5, %5, %5) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [StorageBuffer16BitAccess, StorageUniform16], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_16bit_storage_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_16bit_storage_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_16bit_storage_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_int_compute_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb4}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_int_compute_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device):
        %4 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%4, %4, %4) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [Int64, Int16, Int8], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_int_compute_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_int_compute_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_int_compute_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_float_compute_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb5}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_float_compute_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %3 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%3, %3, %3) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [Float16, Float64], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_float_compute_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_float_compute_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_float_compute_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_dot_product_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb6}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_dot_product_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device):
        %2 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%2, %2, %2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [DotProduct, DotProductInput4x8Bit], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_dot_product_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_dot_product_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_dot_product_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_cooperative_matrix_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb7}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_cooperative_matrix_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %1 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%1, %1, %1) : (index, index, index) -> ()
      }, {
      }) {iree.spirv.coopmatrix.shape = array<i64: 16, 16, 16>, iree.spirv.coopmatrix.type = [f16, f16]} : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.0, [CooperativeMatrixKHR], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_cooperative_matrix_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_cooperative_matrix_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_cooperative_matrix_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "test_address_capabilities", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb_ptr}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "test_address_capabilities", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %0, %0) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Physical64>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.5, [Int64, PhysicalStorageBufferAddresses], [SPV_KHR_physical_storage_buffer]>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "test_address_capabilities"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @test_address_capabilities, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @test_address_capabilities, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

