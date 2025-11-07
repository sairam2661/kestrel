"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi16>, tensor<1xi16>) -> tensor<1xi16>, sym_name = "test_size_one_regression"}> ({
  ^bb0(%arg0: tensor<1xi16>, %arg1: tensor<1xi16>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<1xi16>, tensor<1xi16>) -> tensor<1xi16>
    "func.return"(%0) : (tensor<1xi16>) -> ()
  }) : () -> ()
}) : () -> ()

