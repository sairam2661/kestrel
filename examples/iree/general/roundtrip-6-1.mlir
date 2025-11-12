"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "workgroup_count_no_args", sym_visibility = "public"}> ({
    %0:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
    %1:3 = "iree_tensor_ext.dispatch.workgroup_count_split_reduction_modifier"(%0#0, %0#1, %0#2) : (index, index, index) -> (index, index, index)
    %2:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"() : () -> (index, index, index)
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

