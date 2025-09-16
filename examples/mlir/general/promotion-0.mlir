"builtin.module"() ({
  "gpu.module"() <{sym_name = "foo"}> ({
    "gpu.func"() <{arg_attrs = [{gpu.test_promote_workgroup}], function_type = (memref<5x4xf32>) -> ()}> ({
    ^bb0(%arg0: memref<5x4xf32>):
      "use"(%arg0) : (memref<5x4xf32>) -> ()
      "gpu.return"() : () -> ()
    }) {gpu.kernel, sym_name = "memref3d", workgroup_attributions = 0 : i64} : () -> ()
  }) : () -> ()
}) : () -> ()

