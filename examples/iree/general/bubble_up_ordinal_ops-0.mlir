"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> index, sym_name = "castui"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.index_castui"(%arg0) : (i32) -> index
    %1 = "iree_tensor_ext.dispatch.workload.ordinal"(%0) <{ordinal = 4 : index}> : (index) -> index
    %2 = "foo.op"(%1) : (index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

