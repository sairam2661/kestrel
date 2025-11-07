"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<10xi64>, sym_name = "test_constants_to_file"}> ({
    %0 = "krnl.global"() {alignment = 4096 : i64, name = "constant_0", shape = [10], value = dense<[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]> : tensor<10xi64>} : () -> memref<10xi64>
    %1 = "krnl.global"() {alignment = 4096 : i64, name = "constant_1", shape = [10], value = dense<[1.100000e+00, 1.200000e+00, 1.300000e+00, 1.400000e+00, 1.500000e+00, 1.600000e+00, 1.700000e+00, 1.800000e+00, 1.900000e+00, 2.100000e+00]> : tensor<10xf32>} : () -> memref<10xf32>
    %2 = "krnl.global"() {alignment = 4096 : i64, name = "constant_2", shape = [10], value = dense<[21, 22, 23, 24, 25, 26, 27, 28, 29, 30]> : tensor<10xi64>} : () -> memref<10xi64>
    "func.return"(%2) : (memref<10xi64>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @test_constants_to_file, numInputs = 0 : i32, numOutputs = 1 : i32, signature = "[in_sig]\00@[out_sig]\00"} : () -> ()
}) : () -> ()

