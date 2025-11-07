"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xf32>) -> memref<10xf32>, sym_name = "main_graph", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<10xf32>):
    %0 = "krnl.global"() {alignment = 1024 : i64, name = "constant", shape = [3], value = dense<[0.000000e+00, 1.000000e-01, 2.000000e-01]> : tensor<3xf32>} : () -> memref<3xf32>
    "func.return"(%arg0) : (memref<10xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @main_graph, numInputs = 1 : i32, numOutputs = 1 : i32, signature = "[in_sig]\00@[out_sig]\00"} : () -> ()
}) {"onnx-mlir.symbol-postfix" = "tag_symbols"} : () -> ()

