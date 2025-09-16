"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2xi32>) -> (), sym_name = "elements_attr_i32"}> ({
  ^bb0(%arg0: tensor<1x2xi32>):
    "test.i32ElementsAttr"() <{attr = dense<[1, 2]> : tensor<2xi32>}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

