#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "push_constant", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "push_constant", sym_visibility = "public", workgroup_size = [32 : index, 1 : index, 1 : index]}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> index, sym_name = "push_constant"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
          %1 = "arith.index_castui"(%0) : (i32) -> index
          "func.return"(%1) : (index) -> ()
        }) : () -> ()
      }) {spirv.target_env = #spirv.target_env<#spirv.vce<v1.3, [Int64, Shader], []>, #spirv.resource_limits<>>} : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

