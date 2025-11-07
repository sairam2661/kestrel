"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<8xf32>, sym_name = "return_constant"}> ({
    %0 = "krnl.global"() {name = "cst0", shape = [8], value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00]> : tensor<8xf32>} : () -> memref<8xf32>
    "func.return"(%0) : (memref<8xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @return_constant, numInputs = 0 : i32, numOutputs = 1 : i32, signature = ""} : () -> ()
}) : () -> ()

