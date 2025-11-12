"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64x64xi8>, tensor<64x64xi8>) -> tensor<64x64xi8>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<64x64xi8>, %arg1: tensor<64x64xi8>):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "tt.expand_dims"(%0) <{dim = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
    %2 = "tt.expand_dims"(%1) <{dim = 1 : i32}> : (tensor<64x1xi32>) -> tensor<64x1x1xi32>
    %3 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %4 = "tt.expand_dims"(%3) <{dim = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
    %5 = "tt.expand_dims"(%4) <{dim = 1 : i32}> : (tensor<64x1xi32>) -> tensor<64x1x1xi32>
    %6 = "tt.addptr"(%arg0, %2) : (tensor<64x64xi8>, tensor<64x1x1xi32>) -> tensor<64x64xi8>
    %7 = "tt.addptr"(%arg1, %5) : (tensor<64x64xi8>, tensor<64x1x1xi32>) -> tensor<64x64xi8>
    %8 = "arith.addi"(%6, %7) : (tensor<64x64xi8>, tensor<64x64xi8>) -> tensor<64x64xi8>
    "tt.return"(%8) : (tensor<64x64xi8>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()