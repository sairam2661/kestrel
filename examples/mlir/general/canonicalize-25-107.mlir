"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x24x2xi32>, sym_name = "do_not_fold_intdiv_division_by_0"}> ({
    %0 = "tosa.const"() <{values = dense<0> : tensor<1x24x2xi32>}> : () -> tensor<1x24x2xi32>
    %1 = "tosa.const"() <{values = dense<20> : tensor<1x24x2xi32>}> : () -> tensor<1x24x2xi32>
    %2 = "tosa.intdiv"(%1, %0) : (tensor<1x24x2xi32>, tensor<1x24x2xi32>) -> tensor<1x24x2xi32>
    "func.return"(%2) : (tensor<1x24x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

