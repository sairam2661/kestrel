"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi1>, i1, i1) -> tensor<1xi1>, sym_name = "insert"}> ({
  ^bb0(%arg0: tensor<1xi1>, %arg1: i1, %arg2: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i1, i1) -> i1
    %2 = "tensor.insert"(%1, %arg0, %0) : (i1, tensor<1xi1>, index) -> tensor<1xi1>
    "func.return"(%2) : (tensor<1xi1>) -> ()
  }) : () -> ()
}) : () -> ()

