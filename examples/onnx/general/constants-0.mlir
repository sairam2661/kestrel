"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<10xi64>, sym_name = "test_constants_to_file_return_value"}> ({
    %0 = "krnl.global"() {alignment = 4096 : i64, name = "constant", shape = [10], value = dense<[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]> : tensor<10xi64>} : () -> memref<10xi64>
    "func.return"(%0) : (memref<10xi64>) -> ()
  }) : () -> ()
}) : () -> ()

