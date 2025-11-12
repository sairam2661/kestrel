"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xf32>) -> (), sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<128xf32>):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<128xf32>}> : () -> tensor<128xf32>
    %2 = "arith.addf"(%arg0, %1) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %3 = "arith.cmpi"(%0, %0, "eq") : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %4 = "arith.select"(%3, %2, %arg0) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %5 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<128xf32>) -> tensor<128x1xf32>
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "loop_test"}> ({
  ^bb0(%arg1: i32):
    "scf.for"(%arg1, %arg1, %arg1) <{upper_bound = 10 : i32}> ({
    ^bb1(%iv: i32):
      %6 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    ^bb2(%res: i32):
      "scf.yield"() : () -> ()
    }) : ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %7 = "arith.constant"() <{value = dense<5.000000e+00> : tensor<128xf32>}> : () -> tensor<128xf32>
    "tt.call"(%7) <{callee = @complex_op}> : (tensor<128xf32>) -> ()
    %8 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "tt.call"(%8) <{callee = @loop_test}> : (i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()