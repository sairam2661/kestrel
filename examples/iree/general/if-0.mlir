"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "if_true_test"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<true> : tensor<i1>}> : () -> tensor<i1>
    %7 = "util.unfoldable_constant"() <{value = dense<10> : tensor<i32>}> : () -> tensor<i32>
    %8 = "util.unfoldable_constant"() <{value = 1 : i32}> : () -> i32
    %9 = "tosa.cond_if"(%6) ({
      "check.expect_true"(%8) : (i32) -> ()
      %10 = "util.unfoldable_constant"() <{value = dense<10> : tensor<i32>}> : () -> tensor<i32>
      %11 = "tosa.add"(%7, %10) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%11) : (tensor<i32>) -> ()
    }, {
      "check.expect_false"(%8) : (i32) -> ()
      "tosa.yield"(%7) : (tensor<i32>) -> ()
    }) : (tensor<i1>) -> tensor<i32>
    "check.expect_eq_const"(%9) <{value = dense<20> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "if_false_test"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<false> : tensor<i1>}> : () -> tensor<i1>
    %1 = "util.unfoldable_constant"() <{value = dense<10> : tensor<i32>}> : () -> tensor<i32>
    %2 = "util.unfoldable_constant"() <{value = 0 : i32}> : () -> i32
    %3 = "tosa.cond_if"(%0) ({
      "check.expect_true"(%2) : (i32) -> ()
      "tosa.yield"(%1) : (tensor<i32>) -> ()
    }, {
      "check.expect_false"(%2) : (i32) -> ()
      %4 = "util.unfoldable_constant"() <{value = dense<10> : tensor<i32>}> : () -> tensor<i32>
      %5 = "tosa.add"(%1, %4) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%5) : (tensor<i32>) -> ()
    }) : (tensor<i1>) -> tensor<i32>
    "check.expect_eq_const"(%3) <{value = dense<20> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

