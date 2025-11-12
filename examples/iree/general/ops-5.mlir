"builtin.module"() ({
  "util.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> (), sym_name = "expect_eq_tensor", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    "check.expect_eq"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

