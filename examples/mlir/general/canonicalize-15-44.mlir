"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>), sym_name = "invariant_loop_args_in_same_order"}> ({
  ^bb0(%arg12: tensor<i32>):
    %8 = "arith.constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %9 = "arith.constant"() <{value = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %10 = "arith.constant"() <{value = dense<42> : tensor<i32>}> : () -> tensor<i32>
    %11:5 = "scf.while"(%8, %arg12, %9, %9, %8) ({
    ^bb0(%arg18: tensor<i32>, %arg19: tensor<i32>, %arg20: tensor<i32>, %arg21: tensor<i32>, %arg22: tensor<i32>):
      %14 = "arith.cmpi"(%arg18, %10) <{predicate = 2 : i64}> : (tensor<i32>, tensor<i32>) -> tensor<i1>
      %15 = "tensor.extract"(%14) : (tensor<i1>) -> i1
      "scf.condition"(%15, %arg18, %arg19, %arg20, %arg21, %arg22) : (i1, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> ()
    }, {
    ^bb0(%arg13: tensor<i32>, %arg14: tensor<i32>, %arg15: tensor<i32>, %arg16: tensor<i32>, %arg17: tensor<i32>):
      %12 = "arith.addi"(%arg13, %arg14) <{overflowFlags = #arith.overflow<none>}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %13 = "arith.addi"(%arg15, %arg16) <{overflowFlags = #arith.overflow<none>}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "scf.yield"(%12, %arg14, %13, %13, %arg17) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> ()
    }) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>)
    "func.return"(%11#0, %11#1, %11#2, %11#3, %11#4) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>), sym_name = "while_loop_invariant_argument_different_order"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %2 = "arith.constant"() <{value = dense<42> : tensor<i32>}> : () -> tensor<i32>
    %3:6 = "scf.while"(%0, %1, %1, %1, %0) ({
    ^bb0(%arg7: tensor<i32>, %arg8: tensor<i32>, %arg9: tensor<i32>, %arg10: tensor<i32>, %arg11: tensor<i32>):
      %6 = "arith.cmpi"(%arg7, %arg0) <{predicate = 2 : i64}> : (tensor<i32>, tensor<i32>) -> tensor<i1>
      %7 = "tensor.extract"(%6) : (tensor<i1>) -> i1
      "scf.condition"(%7, %arg8, %arg7, %arg9, %arg7, %arg10, %arg11) : (i1, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> ()
    }, {
    ^bb0(%arg1: tensor<i32>, %arg2: tensor<i32>, %arg3: tensor<i32>, %arg4: tensor<i32>, %arg5: tensor<i32>, %arg6: tensor<i32>):
      %4 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith.overflow<none>}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "scf.yield"(%arg4, %arg2, %5, %5, %arg5) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> ()
    }) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>)
    "func.return"(%3#0, %3#1, %3#2, %3#3, %3#4, %3#5) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

