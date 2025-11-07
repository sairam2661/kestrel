"builtin.module"() ({
  "func.func"() <{function_type = () -> !secret.secret<i2>, sym_name = "constant_false"}> ({
    %0 = "arith.constant"() <{value = false}> : () -> i1
    %1 = "secret.generic"(%0) ({
    ^bb0(%arg0: i1):
      %3 = "tensor.from_elements"(%arg0, %arg0) : (i1, i1) -> tensor<2xi1>
      "secret.yield"(%3) : (tensor<2xi1>) -> ()
    }) : (i1) -> !secret.secret<tensor<2xi1>>
    %2 = "secret.cast"(%1) : (!secret.secret<tensor<2xi1>>) -> !secret.secret<i2>
    "func.return"(%2) : (!secret.secret<i2>) -> ()
  }) : () -> ()
}) : () -> ()

