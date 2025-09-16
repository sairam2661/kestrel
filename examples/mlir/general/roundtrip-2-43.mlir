"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "sparse_has_runtime"}> ({
    %0 = "sparse_tensor.has_runtime_library"() : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

