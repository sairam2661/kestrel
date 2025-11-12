"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "constant_fold_workload_ordinal", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 0 : index}> : (index) -> index
    "util.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

