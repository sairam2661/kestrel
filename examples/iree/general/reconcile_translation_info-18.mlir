#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<constants = 6, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "split_reduction_2d_executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "split_reduction_2d_variant", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "split_reduction_2d", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index):
        %10:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg6, %arg7, %arg8, %arg9, %arg10) : (index, index, index, index, index) -> (index, index, index)
        %11:3 = "iree_tensor_ext.dispatch.workgroup_count_split_reduction_modifier"(%10#0, %10#1, %10#2, %arg6, %arg7, %arg8, %arg9, %arg10) : (index, index, index, index, index, index, index, index) -> (index, index, index)
        "hal.return"(%11#0, %11#1, %11#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "split_reduction_2d"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
          %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
          %5 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %6 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %7 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          %8 = "iree_tensor_ext.dispatch.workload.ordinal"(%3) <{ordinal = 3 : index}> : (index) -> index
          %9 = "iree_tensor_ext.dispatch.workload.ordinal"(%4) <{ordinal = 4 : index}> : (index) -> index
          "scf.forall"(%5, %6) <{mapping = [#iree_linalg_ext.split_reduction_mapping<1>, #iree_linalg_ext.split_reduction_mapping<0>], operandSegmentSizes = array<i32: 0, 2, 0, 0>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 1, 1>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808>}> ({
          ^bb0(%arg0: index, %arg1: index):
            "use1"(%arg0, %arg1) : (index, index) -> ()
            "scf.forall"(%7, %8, %9) <{mapping = [#iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 3, 0, 0>, staticLowerBound = array<i64: 0, 0, 0>, staticStep = array<i64: 1, 1, 1>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>}> ({
            ^bb0(%arg2: index, %arg3: index, %arg4: index):
              "use2"(%arg2, %arg3, %arg4) : (index, index, index) -> ()
              "scf.forall.in_parallel"() ({
              ^bb0:
              }) : () -> ()
            }) : (index, index, index) -> ()
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

