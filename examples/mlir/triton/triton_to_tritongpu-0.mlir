"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "ops"}> ({
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<128x32xf16>}> : () -> tensor<128x32xf16>
    %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<32x128xf16>}> : () -> tensor<32x128xf16>
    %2 = "arith.constant"() <{value = dense<3.000000e+00> : tensor<128x128xf32>}> : () -> tensor<128x128xf32>
    %3 = "tt.dot"(%0, %1, %2) <{allowTF32 = true, maxNumImpreciseAcc = 0 : i32}> {transA = false, transB = false} : (tensor<128x32xf16>, tensor<32x128xf16>, tensor<128x128xf32>) -> tensor<128x128xf32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 2 : i32} : () -> ()

