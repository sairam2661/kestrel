#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#executable_target_vulkan_spirv_fb1 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {key = "value", property = 7 : index}>
"builtin.module"() ({
  "executable.targets"() {a = #executable_target_vmvx_bytecode_fb, b = #executable_target_vulkan_spirv_fb, c = #executable_target_vulkan_spirv_fb1} : () -> ()
}) : () -> ()

