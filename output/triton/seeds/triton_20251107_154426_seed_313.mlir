"builtin.module"() ({
  "tt.func"() <{function_type = () -> !ttg_ptr, sym_name = "complex_reduce", sym_visibility = "public"}> ({
    %0 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
    %1 = "tt.make_range"() <{end = 512 : i32, start = 256 : i32}> : () -> tensor<512xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<1024xi32>, tensor<512xi32>) -> tensor<1024xi32>
    %3 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<1024xi32>) -> tensor<1024x1xi32>
    %4 = "tt.reduce"() <{operation = "add", identity = 0 : i32}> ({
      ^bb0(%arg0: i32, %arg1: i32):
        %5 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "tt.return"(%5) : (i32) -> i32
      }) : (tensor<1024x1xi32>) -> i32
    "tt.return"(%4) : (i32) -> !ttg_ptr
  }) : () -> !ttg_ptr
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()