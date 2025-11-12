#executable_target_ = #hal.executable.target<"", "", {iree_codegen.target_info = #iree_codegen.simple_target<max_workgroup_count = [1024, 512, 256]>}>
#pipeline_layout = #hal.pipeline.layout<constants = 6, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "bounded_scf_forall_3D_interchange", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "bounded_scf_forall_3D_interchange", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "bounded_scf_forall_3D_interchange", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device, %arg4: index, %arg5: index, %arg6: index):
        %6:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg4, %arg5, %arg6) : (index, index, index) -> (index, index, index)
        "hal.return"(%6#0, %6#1, %6#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "bounded_scf_forall_3D_interchange"}> ({
          %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %3 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
          %4 = "iree_tensor_ext.dispatch.workload.ordinal"(%1) <{ordinal = 1 : index}> : (index) -> index
          %5 = "iree_tensor_ext.dispatch.workload.ordinal"(%2) <{ordinal = 2 : index}> : (index) -> index
          "scf.forall"(%3, %4, %5) <{mapping = [#iree_codegen.workgroup_mapping<x>, #iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>], operandSegmentSizes = array<i32: 0, 3, 0, 0>, staticLowerBound = array<i64: 0, 0, 0>, staticStep = array<i64: 1, 1, 1>, staticUpperBound = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>}> ({
          ^bb0(%arg0: index, %arg1: index, %arg2: index):
            "use"(%arg0, %arg1, %arg2) : (index, index, index) -> ()
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

