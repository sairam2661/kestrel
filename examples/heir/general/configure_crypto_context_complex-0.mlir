"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>, sym_name = "complex_func"}> ({
  ^bb0(%arg0: tensor<32xi16>, %arg1: tensor<32xi16>):
    %0 = "arith.constant"() <{value = dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : tensor<32xi16>}> : () -> tensor<32xi16>
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %2 = "arith.addi"(%1, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %3 = "arith.muli"(%1, %0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %4 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %6 = "arith.subi"(%5, %4) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %7 = "arith.muli"(%5, %0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %8 = "arith.addi"(%2, %7) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    "func.return"(%8) : (tensor<32xi16>) -> ()
  }) : () -> ()
}) : () -> ()

