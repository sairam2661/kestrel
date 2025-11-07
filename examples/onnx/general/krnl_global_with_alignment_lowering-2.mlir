"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<2xi64>, sym_name = "test_krnl_global_constant_no_alignment"}> ({
    %0 = "krnl.global"() {name = "constant", shape = [2], value = dense<[0, 1]> : tensor<2xi64>} : () -> memref<2xi64>
    "func.return"(%0) : (memref<2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

