"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (!ttg_ptr) -> (!ttg_ptr), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: !ttg_ptr):
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %2 = "arith.constant"() <{value = dense<3.000000e+00> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %3 = "tt.addptr"(%arg0, %2) : (!ttg_ptr, tensor<8x8xf32>) -> !ttg_ptr
    %4 = "tt.reduce"(%0) <{axis = 0 : i32}> ({
    ^bb1(%arg5: f32, %arg6: f32):
      %7 = "arith.addf"(%arg5, %arg6) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
      "tt.reduce.return"(%7) : (f32) -> ()
    }) : (tensor<8x8xf32>) -> tensor<8xf32>
    %8 = "tt.reduce"(%1) <{axis = 1 : i32}> ({
    ^bb2(%arg8: f32, %arg9: f32):
      %10 = "arith.subf"(%arg8, %arg9) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
      "tt.reduce.return"(%10) : (f32) -> ()
    }) : (tensor<8x8xf32>) -> tensor<8xf32>
    %9 = "scf.if"(%8) <{result0Type = tensor<8xf32>}> ({
    ^bb3(%arg10: i1):
      "scf.yield"(%8) : (tensor<8xf32>) -> tensor<8xf32>
    ^bb4(%arg11: i1):
      "scf.yield"(%4) : (tensor<8xf32>) -> tensor<8xf32>
    }) : (tensor<8xf32>) -> tensor<8xf32>
    %12 = "tt.expand_dims"(%9) <{axis = 1 : i32}> : (tensor<8xf32>) -> tensor<8x1xf32>
    %13 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> !ttg_ptr
    %14 = "tt.addptr"(%13, %12) : (!ttg_ptr, tensor<8x1xf32>) -> !ttg_ptr
    "tt.return"(%14) : (!ttg_ptr) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32} : () -> ()