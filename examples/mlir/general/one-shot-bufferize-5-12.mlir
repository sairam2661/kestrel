"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi1>, index) -> tensor<?xi1>, sym_name = "scf_while"}> ({
  ^bb0(%arg0: tensor<?xi1>, %arg1: index):
    %0:2 = "scf.while"(%arg0, %arg1) ({
    ^bb0(%arg4: tensor<?xi1>, %arg5: index):
      %4 = "tensor.extract"(%arg4, %arg1) : (tensor<?xi1>, index) -> i1
      "scf.condition"(%4, %arg4, %arg1) : (i1, tensor<?xi1>, index) -> ()
    }, {
    ^bb0(%arg2: tensor<?xi1>, %arg3: index):
      %1 = "dummy.some_op"() : () -> index
      %2 = "dummy.another_op"() : () -> i1
      %3 = "tensor.insert"(%2, %arg2, %1) : (i1, tensor<?xi1>, index) -> tensor<?xi1>
      "scf.yield"(%3, %arg3) : (tensor<?xi1>, index) -> ()
    }) : (tensor<?xi1>, index) -> (tensor<?xi1>, index)
    "func.return"(%0#0) : (tensor<?xi1>) -> ()
  }) : () -> ()
}) : () -> ()

