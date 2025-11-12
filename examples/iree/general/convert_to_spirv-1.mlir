#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "push_constant_annotated", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "push_constant_annotated", workgroup_size = [32 : index, 1 : index, 1 : index]}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> index, sym_name = "push_constant_annotated"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
          %1 = "util.assume.int"(%0) <{assumptions = [[#util.int.assumption<umin = 0, umax = 0>, #util.int.assumption<umin = 2048, umax = 2049, udiv = 2048>, #util.int.assumption<umin = 4096, umax = 4096, udiv = 4096>]]}> : (i32) -> i32
          %2 = "arith.index_castui"(%1) : (i32) -> index
          "func.return"(%2) : (index) -> ()
        }) : () -> ()
      }) {spirv.target_env = #spirv.target_env<#spirv.vce<v1.3, [Int64, Shader, ExpectAssumeKHR], [SPV_KHR_expect_assume]>, #spirv.resource_limits<>>} : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

