"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi1>, f32, tensor<2xi1>) -> (tensor<2xi1>, tensor<2xi1>), sym_name = "failing_issue_59135"}> ({
  ^bb0(%arg0: tensor<2x2xi1>, %arg1: f32, %arg2: tensor<2xi1>):
    %0 = "arith.constant"() <{value = false}> : () -> i1
    %1 = "arith.constant"() <{value = true}> : () -> i1
    %2 = "test.cse_of_single_block_op"(%arg2) ({
    ^bb0(%arg4: i1):
      %6 = "arith.constant"() <{value = true}> : () -> i1
      "test.region_yield"(%6) : (i1) -> ()
    }) : (tensor<2xi1>) -> tensor<2xi1>
    %3 = "test.cse_of_single_block_op"(%arg2) ({
    ^bb0(%arg3: i1):
      %5 = "arith.constant"() <{value = true}> : () -> i1
      "test.region_yield"(%5) : (i1) -> ()
    }) : (tensor<2xi1>) -> tensor<2xi1>
    %4 = "arith.maxsi"(%0, %1) : (i1, i1) -> i1
    "func.return"(%2, %3) : (tensor<2xi1>, tensor<2xi1>) -> ()
  }) : () -> ()
}) : () -> ()

