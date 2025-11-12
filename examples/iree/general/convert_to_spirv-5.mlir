#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "interface_wg_id", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "interface_wg_id", sym_visibility = "public", workgroup_size = [32 : index, 1 : index, 1 : index]}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> index, sym_name = "interface_wg_id"}> ({
          %0 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
          %1 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
          %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          "func.return"(%2) : (index) -> ()
        }) : () -> ()
      }) {spirv.target_env = #spirv.target_env<#spirv.vce<v1.3, [Int64, Shader], []>, #spirv.resource_limits<>>} : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

