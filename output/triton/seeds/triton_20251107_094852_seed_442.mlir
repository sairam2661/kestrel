"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr) -> (), sym_name = "complex_reduce"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 32 : i32}> : () -> !ttg_ptr
    %1 = "arith.constant"() <{value = dense<1.0> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %2 = "tt.reduce"(%1) <{axis = 1 : i32}> ({
      ^bb0(%arg0: f32, %arg1: f32):
        %3 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
        "tt.reduce.return"(%3) : (f32) -> ()
    }) : (tensor<8x8xf32>) -> tensor<8xf32>
    %4 = "tt.reduce"(%2) <{axis = 0 : i32}> ({
      ^bb0(%arg0: f32, %arg1: f32):
        %3 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
        "tt.reduce.return"(%3) : (f32) -> ()
    }) : (tensor<8xf32>) -> f32
    %5 = "tt.addptr"(%0, %4) : (!ttg_ptr, f32) -> !ttg_ptr
    %6 = "arith.constant"() <{value = dense<2.0> : tensor<4x4xf32>}> : () -> tensor<4x4xf32>
    %7 = "tt.reduce"(%6) <{axis = 1 : i32}> ({
      ^bb0(%arg0: f32, %arg1: f32):
        %3 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
        "tt.reduce.return"(%3) : (f32) -> ()
    }) : (tensor<4x4xf32>) -> tensor<4xf32>
    %8 = "tt.reduce"(%7) <{axis = 0 : i32}> ({
      ^bb0(%arg0: f32, %arg1: f32):
        %3 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
        "tt.reduce.return"(%3) : (f32) -> ()
    }) : (tensor<4xf32>) -> f32
    %9 = "tt.addptr"(%5, %8) : (!ttg_ptr, f32) -> !ttg_ptr
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 16 : i32} : () -> ()