#executable_target_ = #hal.executable.target<"", "">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "scf_forall_4D_static_interchange", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "scf_forall_4D_static_interchange", sym_visibility = "public", target = #executable_target_}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "scf_forall_4D_static_interchange", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device):
        %0:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%0#0, %0#1, %0#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "scf_forall_4D_static_interchange"}> ({
          "scf.forall"() <{mapping = [#iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<z:2>, #iree_codegen.workgroup_mapping<x>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<z:1>], operandSegmentSizes = array<i32: 0, 0, 0, 0>, staticLowerBound = array<i64: 0, 1, 2, 3, 4>, staticStep = array<i64: 1, 2, 3, 4, 5>, staticUpperBound = array<i64: 4, 10, 19, 29, 44>}> ({
          ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
            "use"(%arg0, %arg1, %arg2, %arg3, %arg4) : (index, index, index, index, index) -> ()
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

