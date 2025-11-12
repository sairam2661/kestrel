"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x128xf32>, tensor<128x128xf32>) -> tensor<128x128xf32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<128x128xf32>, %arg1: tensor<128x128xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<128x128xf32>, tensor<128x128xf32>) -> tensor<128x128xf32>
    "tt.return"(%0) : (tensor<128x128xf32>) -> ()
  }) : () -> ()
}) : () -> ()