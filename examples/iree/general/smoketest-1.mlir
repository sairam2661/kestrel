#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#device_target_hip = #hal.device.target<"hip", [#executable_target_rocm_hsaco_fb]> : !hal.device
"builtin.module"() ({
  "stream.executable"() <{sym_name = "executable", sym_visibility = "public"}> ({
    "stream.executable.export"() <{function_ref = @export, sym_name = "export"}> ({
    ^bb0(%arg0: index):
      %0:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg0) : (index) -> (index, index, index)
      "stream.return"(%0#0, %0#1, %0#2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "export"}> ({
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_hip]} : () -> ()

