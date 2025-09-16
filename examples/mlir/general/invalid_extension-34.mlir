"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x26x3xbf16>, tensor<13x26xi32>, tensor<13x26x3xbf16>) -> tensor<13x26x3xbf16>, sym_name = "test_scatter"}> ({
  ^bb0(%arg0: tensor<13x26x3xbf16>, %arg1: tensor<13x26xi32>, %arg2: tensor<13x26x3xbf16>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<13x26x3xbf16>, tensor<13x26xi32>, tensor<13x26x3xbf16>) -> tensor<13x26x3xbf16>
    "func.return"(%0) : (tensor<13x26x3xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

