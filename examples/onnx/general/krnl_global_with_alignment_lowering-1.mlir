"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<3xf32>, sym_name = "test_krnl_global_constant_alignment"}> ({
    %0 = "krnl.global"() {alignment = 1024 : i64, name = "constant", shape = [3], value = dense<[0.000000e+00, 1.000000e-01, 2.000000e-01]> : tensor<3xf32>} : () -> memref<3xf32>
    "func.return"(%0) : (memref<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

