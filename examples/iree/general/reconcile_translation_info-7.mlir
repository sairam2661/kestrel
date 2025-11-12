#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "scf_forall_2D", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "scf_forall_2D", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "scf_forall_2D", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device, %arg3: index, %arg4: index, %arg5: index):
        %6:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg3, %arg4, %arg5) : (index, index, index) -> (index, index, index)
        "hal.return"(%6#0, %6#1, %6#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "scf_forall_2D"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %4 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %5 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          "scf.forall"(%3, %4) <{mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 2, 0, 0>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 64, 32>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808>}> ({
          ^bb0(%arg0: index, %arg1: index):
            "use"(%arg0, %arg1) : (index, index) -> ()
            "scf.forall.in_parallel"() ({
            ^bb0:
            }) : () -> ()
          }) : (index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

