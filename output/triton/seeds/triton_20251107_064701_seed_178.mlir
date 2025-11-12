"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_reduce_add"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %1 = "tt.reduce"() <{operation = "add"}> ({
      ^bb1(%arg2: tensor<8xi32>, %arg3: tensor<8xi32>):
        %2 = "arith.addi"(%arg2, %arg3) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
        "tt.yield"(%2) : (tensor<8xi32>) -> ()
    }) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<8xi32>) -> tensor<8x1xi32>
    %4 = "tt.addptr"(%3, %arg0) : (tensor<8x1xi32>, tensor<8xi32>) -> tensor<8x1xi32>
    %5 = "tt.call"() <{callee = @helper_func}> : () -> tensor<8xi32>
    %6 = "arith.addi"(%4, %5) : (tensor<8x1xi32>, tensor<8xi32>) -> tensor<8x1xi32>
    "tt.return"(%6) : (tensor<8x1xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> tensor<8xi32>, sym_name = "helper_func"}> ({
    %0 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflowFLAGS}>
    : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 16 : i32} : () -> ()