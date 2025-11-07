"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi1>) -> i1, sym_name = "extract"}> ({
  ^bb0(%arg0: tensor<1xi1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<1xi1>, index) -> i1
    "func.return"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

