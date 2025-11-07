"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<10xi64>, sym_name = "test_constants_to_file_splat"}> ({
    %0 = "krnl.global"() {alignment = 4096 : i64, name = "constant", shape = [10], value = dense<1> : tensor<10xi64>} : () -> memref<10xi64>
    "func.return"(%0) : (memref<10xi64>) -> ()
  }) : () -> ()
}) : () -> ()

