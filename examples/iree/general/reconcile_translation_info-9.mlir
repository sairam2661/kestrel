#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<constants = 12, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "scf_forall_4D", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "scf_forall_4D", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "scf_forall_4D", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: index, %arg13: index, %arg14: index, %arg15: index, %arg16: index):
        %24:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16) : (index, index, index, index, index, index, index, index, index, index, index, index) -> (index, index, index)
        "hal.return"(%24#0, %24#1, %24#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "scf_forall_4D"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
          %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
          %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
          %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> index
          %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 7 : index}> : () -> index
          %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 8 : index}> : () -> index
          %9 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 9 : index}> : () -> index
          %10 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 10 : index}> : () -> index
          %11 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 11 : index}> : () -> index
          %12 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %13 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %14 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          %15 = "iree_tensor_ext.dispatch.workload.ordinal"(%3) <{ordinal = 3 : index}> : (index) -> index
          %16 = "iree_tensor_ext.dispatch.workload.ordinal"(%4) <{ordinal = 4 : index}> : (index) -> index
          %17 = "iree_tensor_ext.dispatch.workload.ordinal"(%5) <{ordinal = 5 : index}> : (index) -> index
          %18 = "iree_tensor_ext.dispatch.workload.ordinal"(%6) <{ordinal = 6 : index}> : (index) -> index
          %19 = "iree_tensor_ext.dispatch.workload.ordinal"(%7) <{ordinal = 7 : index}> : (index) -> index
          %20 = "iree_tensor_ext.dispatch.workload.ordinal"(%8) <{ordinal = 8 : index}> : (index) -> index
          %21 = "iree_tensor_ext.dispatch.workload.ordinal"(%9) <{ordinal = 9 : index}> : (index) -> index
          %22 = "iree_tensor_ext.dispatch.workload.ordinal"(%10) <{ordinal = 10 : index}> : (index) -> index
          %23 = "iree_tensor_ext.dispatch.workload.ordinal"(%11) <{ordinal = 11 : index}> : (index) -> index
          "scf.forall"(%12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) <{mapping = [#iree_codegen.workgroup_mapping<z:1>, #iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 4, 4, 4, 0>, staticLowerBound = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, staticStep = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>}> ({
          ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
            "use"(%arg0, %arg1, %arg2, %arg3) : (index, index, index, index) -> ()
            "scf.forall.in_parallel"() ({
            ^bb0:
            }) : () -> ()
          }) : (index, index, index, index, index, index, index, index, index, index, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

