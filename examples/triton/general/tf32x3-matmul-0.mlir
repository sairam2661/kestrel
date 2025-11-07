"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xf32>, tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "dot_test"}> ({
  ^bb0(%arg0: tensor<16x16xf32>, %arg1: tensor<16x16xf32>, %arg2: tensor<16x16xf32>):
    %0 = "tt.dot"(%arg0, %arg1, %arg2) <{inputPrecision = 1 : i32, maxNumImpreciseAcc = 0 : i32}> : (tensor<16x16xf32>, tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
    "tt.return"(%0) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

