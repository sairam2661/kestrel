"builtin.module"() ({
  "gpu.module"() <{sym_name = "kernel"}> ({
    "gpu.func"() <{function_type = (memref<8xi32>) -> ()}> ({
    ^bb0(%arg0: memref<8xi32>):
      "gpu.return"() : () -> ()
    }) {gpu.kernel, sym_name = "function_io", workgroup_attributions = 0 : i64} : () -> ()
  }) : () -> ()
}) : () -> ()

