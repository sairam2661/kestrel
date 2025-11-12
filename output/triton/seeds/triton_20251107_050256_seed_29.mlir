"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x128xf32>) -> tensor<128x128xf32>, sym_name = "tensor_transform"}> ({
  ^bb0(%arg0: tensor<128x128xf32>):
    %0 = "tt.make_range"() <{start = 0 : i32, end = 128 : i32, step = 1 : i32}> : () -> tensor<128xi32>
    %1 = "tt.expand_dims"(%0, 1) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xf32>
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128x128xf32>, tensor<128x1xf32>) -> tensor<128x128xf32>
    %3 = "tt.reduce"(%2) <{operation = "add", axis = 1 : i32, identity = 0.000000e+00 : f32, accumulator_type = tensor<128xf32>}> : (tensor<128x128xf32>) -> tensor<128xf32>
    "tt.return"(%3) : (tensor<128xf32>) -> ()
  }) : () -> ()
}) : () -> ()