"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> (), sym_name = "some_external_func_within_scf_execute", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    "scf.execute_region"() ({
      "func.call"(%0) <{callee = @some_external_func_within_scf_execute}> : (tensor<4xi32>) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

