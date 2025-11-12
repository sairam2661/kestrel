#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<constants = 6, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "split_reduction_executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "split_reduction_variant", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "split_reduction", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index):
        %12:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg5, %arg6, %arg7, %arg8, %arg9, %arg10) : (index, index, index, index, index, index) -> (index, index, index)
        %13:3 = "iree_tensor_ext.dispatch.workgroup_count_split_reduction_modifier"(%12#0, %12#1, %12#2, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10) : (index, index, index, index, index, index, index, index, index) -> (index, index, index)
        "hal.return"(%13#0, %13#1, %13#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "split_reduction"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
          %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
          %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
          %6 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %7 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %8 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          %9 = "iree_tensor_ext.dispatch.workload.ordinal"(%3) <{ordinal = 3 : index}> : (index) -> index
          %10 = "iree_tensor_ext.dispatch.workload.ordinal"(%4) <{ordinal = 4 : index}> : (index) -> index
          %11 = "iree_tensor_ext.dispatch.workload.ordinal"(%5) <{ordinal = 5 : index}> : (index) -> index
          "scf.forall"(%6, %7, %8) <{mapping = [#iree_linalg_ext.split_reduction_mapping<0>], operandSegmentSizes = array<i32: 1, 1, 1, 0>, staticLowerBound = array<i64: -9223372036854775808>, staticStep = array<i64: -9223372036854775808>, staticUpperBound = array<i64: -9223372036854775808>}> ({
          ^bb0(%arg0: index):
            "use1"(%arg0) : (index) -> ()
            "scf.forall"(%9, %10, %11) <{mapping = [#iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 3, 0, 0>, staticLowerBound = array<i64: 0, 0, 0>, staticStep = array<i64: 1, 1, 1>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>}> ({
            ^bb0(%arg1: index, %arg2: index, %arg3: index):
              "use2"(%arg1, %arg2, %arg3) : (index, index, index) -> ()
              "scf.forall.in_parallel"() ({
              ^bb0:
              }) : () -> ()
            }) : (index, index, index) -> ()
            "scf.forall.in_parallel"() ({
            ^bb0:
            }) : () -> ()
          }) : (index, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

