"builtin.module"() ({
  "util.func"() <{function_type = (tensor<2x2xi32>) -> (), sym_name = "expect_eq_const", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    "check.expect_eq_const"(%arg0) <{value = dense<1> : tensor<2x2xi32>}> : (tensor<2x2xi32>) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

