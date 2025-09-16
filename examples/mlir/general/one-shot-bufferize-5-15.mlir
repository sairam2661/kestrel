"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi1>, tensor<5xi1>, index) -> (), sym_name = "scf_while_iter_arg_result_mismatch"}> ({
  ^bb0(%arg0: tensor<5xi1>, %arg1: tensor<5xi1>, %arg2: index):
    "scf.while"(%arg1) ({
    ^bb0(%arg3: tensor<5xi1>):
      %3 = "tensor.extract"(%arg0, %arg2) : (tensor<5xi1>, index) -> i1
      %4 = "tensor.extract"(%arg3, %arg2) : (tensor<5xi1>, index) -> i1
      "dummy.use"(%4) : (i1) -> ()
      "scf.condition"(%3) : (i1) -> ()
    }, {
      %0 = "dummy.some_op"() : () -> index
      %1 = "dummy.another_op"() : () -> i1
      %2 = "tensor.insert"(%1, %arg0, %0) : (i1, tensor<5xi1>, index) -> tensor<5xi1>
      "scf.yield"(%2) : (tensor<5xi1>) -> ()
    }) : (tensor<5xi1>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

