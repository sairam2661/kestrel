#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [4]>
#translation1 = #iree_codegen.translation_info<pipeline = None workgroup_size = [4, 2]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "err_mistmatched_workgroup_size", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "err_mismatched_workgroup_size", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "entry_point", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "entry_point"}> ({
          "func.call"() <{callee = @fn1}> : () -> ()
          "func.call"() <{callee = @fn2}> : () -> ()
          "func.return"() : () -> ()
        }) : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "fn1"}> ({
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "fn2"}> ({
          "func.return"() : () -> ()
        }) {translation_info = #translation1} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

