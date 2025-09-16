"builtin.module"() ({
  "gpu.module"() <{sym_name = "test_module"}> ({
    "gpu.func"() <{function_type = () -> ()}> ({
      "gpu.return"() : () -> ()
    }) {gpu.kernel, sym_name = "kernel_func", workgroup_attributions = 0 : i64} : () -> ()
  }) : () -> ()
}) : () -> ()

