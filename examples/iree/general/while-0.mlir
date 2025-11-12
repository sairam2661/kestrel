"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "while_test_iter0"}> ({
    %18 = "util.unfoldable_constant"() <{value = dense<4> : tensor<i32>}> : () -> tensor<i32>
    %19 = "tosa.while_loop"(%18) ({
    ^bb0(%arg7: tensor<i32>):
      %22 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %23 = "tosa.greater_equal"(%22, %arg7) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "tosa.yield"(%23) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg6: tensor<i32>):
      %20 = "tosa.const"() <{values = dense<2> : tensor<i32>}> : () -> tensor<i32>
      %21 = "tosa.add"(%arg6, %20) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%21) : (tensor<i32>) -> ()
    }) : (tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%19) <{value = dense<4> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "while_test_iter1"}> ({
    %12 = "util.unfoldable_constant"() <{value = dense<2> : tensor<i32>}> : () -> tensor<i32>
    %13 = "tosa.while_loop"(%12) ({
    ^bb0(%arg5: tensor<i32>):
      %16 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %17 = "tosa.greater_equal"(%16, %arg5) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "tosa.yield"(%17) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg4: tensor<i32>):
      %14 = "tosa.const"() <{values = dense<2> : tensor<i32>}> : () -> tensor<i32>
      %15 = "tosa.add"(%arg4, %14) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%15) : (tensor<i32>) -> ()
    }) : (tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%13) <{value = dense<4> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "while_test_iter2"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %7 = "tosa.while_loop"(%6) ({
    ^bb0(%arg3: tensor<i32>):
      %10 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %11 = "tosa.greater_equal"(%10, %arg3) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "tosa.yield"(%11) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg2: tensor<i32>):
      %8 = "tosa.const"() <{values = dense<2> : tensor<i32>}> : () -> tensor<i32>
      %9 = "tosa.add"(%arg2, %8) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%9) : (tensor<i32>) -> ()
    }) : (tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%7) <{value = dense<4> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "while_test_iter4"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.while_loop"(%0) ({
    ^bb0(%arg1: tensor<i32>):
      %4 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %5 = "tosa.greater_equal"(%4, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "tosa.yield"(%5) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg0: tensor<i32>):
      %2 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
      %3 = "tosa.add"(%arg0, %2) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%3) : (tensor<i32>) -> ()
    }) : (tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%1) <{value = dense<4> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

