"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64x64xf16>, i32) -> tensor<64x64xf16>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<64x64xf16>, %arg1: i32):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "tt.expand_dims"(%0, %arg1) : (tensor<64xi32>, i32) -> tensor<64x1xi32>
    %2 = "tt.reduce"(%arg0, %1) <{operation = "add"}> : (tensor<64x64xf16>, tensor<64x1xi32>) -> tensor<64x1xf16>
    %3 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %4 = "tt.expand_dims"(%3, %arg1) : (tensor<32xi32>, i32) -> tensor<32x1xi32>
    %5 = "tt.reduce"(%2, %4) <{operation = "mul"}> : (tensor<64x1xf16>, tensor<32x1xi32>) -> tensor<32x1xf16>
    %6 = "tt.expand_dims"(%5, %arg1) : (tensor<32x1xf16>, i32) -> tensor<32x1x1xf16>
    %7 = "tt.addptr"(%arg0, %6) : (tensor<64x64xf16>, tensor<32x1x1xf16>) -> tensor<64x64xf16>
    "tt.return"(%7) : (tensor<64x64xf16>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()