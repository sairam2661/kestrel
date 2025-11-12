#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "exe0"}> ({
    "hal.executable.variant"() <{sym_name = "target", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 123 : index, sym_name = "entry123", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "exe1"}> ({
    "hal.executable.variant"() <{sym_name = "target", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 456 : index, sym_name = "entry456", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = () -> (index, index), sym_name = "resolve", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
    %0 = "hal.executable.export.ordinal"() <{entry_point = @exe0::@target::@entry123}> : () -> index
    %1 = "hal.executable.export.ordinal"() <{entry_point = @exe1::@target::@entry456}> : () -> index
    "util.return"(%0, %1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

