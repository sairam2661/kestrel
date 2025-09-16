"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xbf16>, tensor<13x26xi32>) -> tensor<13x26x3xbf16>, sym_name = "test_gather"}> ({
  ^bb0(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x26xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<13x21x3xbf16>, tensor<13x26xi32>) -> tensor<13x26x3xbf16>
    "func.return"(%0) : (tensor<13x26x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

