"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt.ptr<f32, 1>) -> (), sym_name = "reduce_ops"}> ({
  ^bb0(%arg0: !tt.ptr<f32, 1>):
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<4x4xf32>}> : () -> tensor<4x4xf32>
    %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<8x2xf32>}> : () -> tensor<8x2xf32>
    %2 = "arith.constant"() <{value = dense<3.000000e+00> : tensor<16x16xf32>}> : () -> tensor<16x16xf32>
    %3 = "tt.reduce"(%0) <{axis = 0 : i32}> ({
    ^bb0(%arg1: f32, %arg2: f32):
      %7 = "arith.addf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "tt.reduce.return"(%7) : (f32) -> ()
    }) : (tensor<4x4xf32>) -> tensor<4xf32>
    %4 = "tt.reduce"(%1) <{axis = 0 : i32}> ({
    ^bb0(%arg1: f32, %arg2: f32):
      %7 = "arith.addf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "tt.reduce.return"(%7) : (f32) -> ()
    }) : (tensor<8x2xf32>) -> tensor<2xf32>
    %5 = "tt.reduce"(%1) <{axis = 1 : i32}> ({
    ^bb0(%arg1: f32, %arg2: f32):
      %7 = "arith.addf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "tt.reduce.return"(%7) : (f32) -> ()
    }) : (tensor<8x2xf32>) -> tensor<8xf32>
    %6 = "tt.reduce"(%2) <{axis = 0 : i32}> ({
    ^bb0(%arg1: f32, %arg2: f32):
      %7 = "arith.addf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "tt.reduce.return"(%7) : (f32) -> ()
    }) : (tensor<16x16xf32>) -> tensor<16xf32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 2 : i32} : () -> ()

