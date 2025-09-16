"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi1>, tensor<5xi1>, index) -> (tensor<5xi1>, tensor<5xi1>), sym_name = "scf_while_non_equiv_condition_and_body"}> ({
  ^bb0(%arg0: tensor<5xi1>, %arg1: tensor<5xi1>, %arg2: index):
    %0:2 = "scf.while"(%arg0, %arg1) ({
    ^bb0(%arg5: tensor<5xi1>, %arg6: tensor<5xi1>):
      %1 = "tensor.extract"(%arg5, %arg2) : (tensor<5xi1>, index) -> i1
      "scf.condition"(%1, %arg6, %arg5) : (i1, tensor<5xi1>, tensor<5xi1>) -> ()
    }, {
    ^bb0(%arg3: tensor<5xi1>, %arg4: tensor<5xi1>):
      "scf.yield"(%arg4, %arg3) : (tensor<5xi1>, tensor<5xi1>) -> ()
    }) : (tensor<5xi1>, tensor<5xi1>) -> (tensor<5xi1>, tensor<5xi1>)
    "func.return"(%0#0, %0#1) : (tensor<5xi1>, tensor<5xi1>) -> ()
  }) : () -> ()
}) : () -> ()

