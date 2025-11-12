"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.extsi"(%3) : (i32) -> i64
    %5 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %6 = "tt.bitcast"(%5) : (tensor<128xi32>) -> tensor<128xf32>
    %7 = "tt.expand_dims"(%6) <{axis = 1 : i32}> : (tensor<128xf32>) -> tensor<128x1xf32>
    %8 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %9 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %10 = "arith.muli"(%8, %9) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %11 = "tt.reduce"() <{operation = "add", reduction_dim = 0 : i32}> ({
      ^bb1(%arg2: i32, %arg3: i32):
        %12 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
        "scf.yield"(%12) : (i32) -> i32
    }) : (tensor<64xi32>) -> i32
    "tt.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()