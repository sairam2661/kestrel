"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi1>, tensor<5xi1>, index) -> (tensor<5xi1>, tensor<5xi1>), sym_name = "scf_while_non_equiv_condition_and_body"}> ({
  ^bb0(%arg0: tensor<5xi1>, %arg1: tensor<5xi1>, %arg2: index):
    %0:2 = "scf.while"(%arg0, %arg1) ({
    ^bb0(%arg5: tensor<5xi1>, %arg6: tensor<5xi1>):
      %4 = "tensor.extract"(%arg5, %arg2) : (tensor<5xi1>, index) -> i1
      "scf.condition"(%4, %arg6, %arg5) : (i1, tensor<5xi1>, tensor<5xi1>) -> ()
    }, {
    ^bb0(%arg3: tensor<5xi1>, %arg4: tensor<5xi1>):
      %1 = "dummy.some_op"() : () -> index
      %2 = "dummy.another_op"() : () -> i1
      %3 = "tensor.insert"(%2, %arg3, %1) : (i1, tensor<5xi1>, index) -> tensor<5xi1>
      "scf.yield"(%arg4, %3) : (tensor<5xi1>, tensor<5xi1>) -> ()
    }) : (tensor<5xi1>, tensor<5xi1>) -> (tensor<5xi1>, tensor<5xi1>)
    "func.return"(%0#0, %0#1) : (tensor<5xi1>, tensor<5xi1>) -> ()
  }) : () -> ()
}) : () -> ()

