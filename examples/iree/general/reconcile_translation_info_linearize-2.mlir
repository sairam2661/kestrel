#executable_target_ = #hal.executable.target<"", "", {iree_codegen.target_info = #iree_codegen.simple_target<max_workgroup_count = [1024, 512, 256]>}>
#pipeline_layout = #hal.pipeline.layout<constants = 12, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "bounded_scf_forall_4D", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "bounded_scf_forall_4D", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "bounded_scf_forall_4D", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index, %arg7: index, %arg8: index):
        %8:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg5, %arg6, %arg7, %arg8) : (index, index, index, index) -> (index, index, index)
        "hal.return"(%8#0, %8#1, %8#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "bounded_scf_forall_4D"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
          %4 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %5 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %6 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          %7 = "iree_tensor_ext.dispatch.workload.ordinal"(%3) <{ordinal = 3 : index}> : (index) -> index
          "scf.forall"(%4, %5, %6, %7) <{mapping = [#iree_codegen.workgroup_mapping<z:1>, #iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 4, 0, 0>, staticLowerBound = array<i64: 0, 0, 0, 0>, staticStep = array<i64: 1, 1, 1, 1>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>}> ({
          ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
            "use"(%arg0, %arg1, %arg2, %arg3) : (index, index, index, index) -> ()
            "scf.forall.in_parallel"() ({
            ^bb0:
            }) : () -> ()
          }) : (index, index, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

