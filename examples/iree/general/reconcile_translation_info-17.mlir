#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "only_split_reduction_executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "only_split_reduction_variant", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "only_split_reduction", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device, %arg2: index, %arg3: index, %arg4: index):
        %6:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg2, %arg3, %arg4) : (index, index, index) -> (index, index, index)
        %7:3 = "iree_tensor_ext.dispatch.workgroup_count_split_reduction_modifier"(%6#0, %6#1, %6#2, %arg2, %arg3, %arg4) : (index, index, index, index, index, index) -> (index, index, index)
        "hal.return"(%7#0, %7#1, %7#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "only_split_reduction"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %4 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %5 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          "scf.forall"(%3, %4, %5) <{mapping = [#iree_linalg_ext.split_reduction_mapping<0>], operandSegmentSizes = array<i32: 1, 1, 1, 0>, staticLowerBound = array<i64: -9223372036854775808>, staticStep = array<i64: -9223372036854775808>, staticUpperBound = array<i64: -9223372036854775808>}> ({
          ^bb0(%arg0: index):
            "use1"(%arg0) : (index) -> ()
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

