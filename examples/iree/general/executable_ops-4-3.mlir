#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable_with_condition"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg4: !hal.device):
        %0:2 = "hal.device.query"(%arg4) <{category = "some", key = "value"}> : (!hal.device) -> (i1, i32)
        "hal.return"(%0#0) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, subgroup_size = 64 : index, sym_name = "entry0", sym_visibility = "public", workgroup_size = [4 : index, 1 : index, 1 : index]}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index, %arg3: index):
        "hal.return"(%arg1, %arg2, %arg3) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.binary"() <{data = dense<1> : vector<128xi8>, format = "some_format", sym_name = "backend_binary"}> : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

