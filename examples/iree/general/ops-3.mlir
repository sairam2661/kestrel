"builtin.module"() ({
  "util.func"() <{function_type = (tensor<2x2xi32>) -> (), sym_name = "expect_all_true_tensor", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    "check.expect_all_true"(%arg0) : (tensor<2x2xi32>) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

