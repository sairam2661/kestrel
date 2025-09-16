"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xui8>) -> (), sym_name = "test_simple_ui8"}> ({
  ^bb0(%arg0: tensor<1xui8>):
    %0 = "tosa.cast"(%arg0) : (tensor<1xui8>) -> tensor<1xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

