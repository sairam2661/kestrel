#executable_target_format = #hal.executable.target<"backend", "format">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "exe", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "unused_variant", sym_visibility = "public", target = #executable_target_format}> ({
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "used_variant", sym_visibility = "public", target = #executable_target_format}> ({
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "user", sym_visibility = "private"}> ({
  }) {some.ref = {key = [@exe::@used_variant]}} : () -> ()
}) : () -> ()

