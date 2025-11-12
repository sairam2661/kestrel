#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "different_rank_scf_forall_ops", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "different_rank_scf_forall_ops", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "different_rank_scf_forall_ops", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device):
        %0:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%0#0, %0#1, %0#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "different_rank_scf_forall_ops"}> ({
          "scf.forall"() <{mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 0, 0, 0>, staticLowerBound = array<i64: 0, 0>, staticStep = array<i64: 1, 1>, staticUpperBound = array<i64: 2, 42>}> ({
          ^bb0(%arg3: index, %arg4: index):
            "use"(%arg3, %arg4) : (index, index) -> ()
            "scf.forall.in_parallel"() ({
            ^bb0:
            }) : () -> ()
          }) : () -> ()
          "scf.forall"() <{mapping = [#iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 0, 0, 0>, staticLowerBound = array<i64: 0, 0, 0>, staticStep = array<i64: 1, 1, 1>, staticUpperBound = array<i64: 4, 2, 8>}> ({
          ^bb0(%arg0: index, %arg1: index, %arg2: index):
            "use"(%arg0, %arg1, %arg2) : (index, index, index) -> ()
            "scf.forall.in_parallel"() ({
            ^bb0:
            }) : () -> ()
          }) : () -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

