"builtin.module"() ({
  "gpu.module"() <{sym_name = "kernel"}> ({
    "gpu.func"() <{arg_attrs = [{llvm.readonly}], function_type = (!llvm.ptr) -> ()}> ({
    ^bb0(%arg0: !llvm.ptr):
      "gpu.return"() : () -> ()
    }) {sym_name = "test_func_readonly_ptr", workgroup_attributions = 0 : i64} : () -> ()
  }) : () -> ()
}) : () -> ()

