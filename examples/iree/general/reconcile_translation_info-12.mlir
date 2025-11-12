#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "no_loop_default_workgroup_count", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "no_loop_default_workgroup_count", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "no_loop_default_workgroup_count", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index):
        %0:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg1, %arg2) : (index, index) -> (index, index, index)
        "hal.return"(%0#1, %0#2, %0#0) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "no_loop_default_workgroup_count"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

