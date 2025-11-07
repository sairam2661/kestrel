"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xf32>) -> memref<10xf32>, sym_name = "main_graph", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<10xf32>):
    "func.return"(%arg0) : (memref<10xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @main_graph, numInputs = 1 : i32, numOutputs = 1 : i32, signature = "[in_sig]\00@[out_sig]\00"} : () -> ()
}) {"onnx-mlir.accels" = ["Pseudo-0x10001", "NNPA-0x10000"]} : () -> ()

