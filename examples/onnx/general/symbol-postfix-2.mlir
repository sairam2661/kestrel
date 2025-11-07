"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<10xi64>, sym_name = "main_graph"}> ({
    %0 = "krnl.global"() {alignment = 4096 : i64, name = "constant_0", shape = [10], value = dense<[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]> : tensor<10xi64>} : () -> memref<10xi64>
    %1 = "krnl.global"() {alignment = 4096 : i64, name = "constant_1", shape = [10], value = dense<[11, 12, 13, 14, 15, 16, 17, 18, 19, 20]> : tensor<10xi64>} : () -> memref<10xi64>
    %2 = "krnl.global"() {alignment = 4096 : i64, name = "constant_2", shape = [10], value = dense<[21, 22, 23, 24, 25, 26, 27, 28, 29, 30]> : tensor<10xi64>} : () -> memref<10xi64>
    "func.return"(%2) : (memref<10xi64>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @main_graph, numInputs = 0 : i32, numOutputs = 1 : i32, signature = "[in_sig]\00@[out_sig]\00"} : () -> ()
}) {"onnx-mlir.symbol-postfix" = "tag_constants_to_file"} : () -> ()

