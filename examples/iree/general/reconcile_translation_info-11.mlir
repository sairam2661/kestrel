#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "no_loop_do_nothing", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "no_loop_do_nothing", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "no_loop_do_nothing", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        %1 = "arith.constant"() <{value = 2 : index}> : () -> index
        "hal.return"(%0, %1, %0) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "no_loop_do_nothing"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

