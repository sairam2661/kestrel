"builtin.module"() ({
  "gpu.module"() <{sym_name = "testmod"}> ({
    "gpu.func"() <{function_type = (complex<f64>) -> complex<f64>}> ({
    ^bb0(%arg0: complex<f64>):
      "gpu.return"(%arg0) : (complex<f64>) -> ()
    }) {sym_name = "_QPtest", workgroup_attributions = 0 : i64} : () -> ()
  }) : () -> ()
}) {fir.defaultkind = "a1c4d8i4l4r4", fir.kindmap = "", llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} : () -> ()

