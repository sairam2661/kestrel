#executable_target_format = #hal.executable.target<"backend", "format">
"builtin.module"() <{sym_name = "module"}> ({
  "hal.executable"() <{sym_name = "exe", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "embedded_elf_arm_64", sym_visibility = "public", target = #executable_target_format}> ({
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

