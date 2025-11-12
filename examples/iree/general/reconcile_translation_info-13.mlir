#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "multi_export_scf_forall", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "multi_export_scf_forall", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "entry_point0", sym_visibility = "public"}> ({
      ^bb0(%arg8: !hal.device, %arg9: index, %arg10: index, %arg11: index):
        %13:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg9, %arg10, %arg11) : (index, index, index) -> (index, index, index)
        "hal.return"(%13#0, %13#1, %13#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "entry_point1", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index, %arg7: index):
        %12:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg5, %arg6, %arg7) : (index, index, index) -> (index, index, index)
        "hal.return"(%12#0, %12#1, %12#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "entry_point0"}> ({
          %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %9 = "iree_tensor_ext.dispatch.workload.ordinal"(%6) <{ordinal = 0 : index}> : (index) -> index
          %10 = "iree_tensor_ext.dispatch.workload.ordinal"(%7) <{ordinal = 1 : index}> : (index) -> index
          %11 = "iree_tensor_ext.dispatch.workload.ordinal"(%8) <{ordinal = 2 : index}> : (index) -> index
          "scf.forall"(%9, %10) <{mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 2, 0, 0>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 64, 32>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808>}> ({
          ^bb0(%arg2: index, %arg3: index):
            "use0"(%arg2, %arg3) : (index, index) -> ()
            "scf.forall.in_parallel"() ({
            ^bb0:
            }) : () -> ()
          }) : (index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "entry_point1"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %4 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %5 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          "scf.forall"(%3, %4) <{mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 2, 0, 0>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 64, 32>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808>}> ({
          ^bb0(%arg0: index, %arg1: index):
            "use1"(%arg0, %arg1) : (index, index) -> ()
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

