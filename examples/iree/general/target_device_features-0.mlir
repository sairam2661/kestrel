"builtin.module"() ({
  "stream.executable"() <{sym_name = "reduce_dispatch", sym_visibility = "public"}> ({
    "stream.executable.export"() <{function_ref = @reduce_dispatch, sym_name = "reduce_dispatch"}> ({
    ^bb0(%arg0: index):
      %0:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg0) : (index) -> (index, index, index)
      "stream.return"(%0#0, %0#1, %0#2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "reduce_dispatch"}> ({
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
}) : () -> ()

