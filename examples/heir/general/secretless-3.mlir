"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> !secret.secret<i1>, sym_name = "no_conceal_from_elements"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = false}> : () -> i1
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i1):
      %3 = "tensor.from_elements"(%arg1, %arg1) : (i1, i1) -> tensor<2xi1>
      %4 = "tensor.extract"(%3, %1) : (tensor<2xi1>, index) -> i1
      "secret.yield"(%4) : (i1) -> ()
    }) : (i1) -> !secret.secret<i1>
    "func.return"(%2) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

