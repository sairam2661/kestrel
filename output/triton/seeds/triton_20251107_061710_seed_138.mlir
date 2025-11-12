"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_reduce"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_attrs}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "tt.reduce"(%2) <{operation = #tt_reduce_attrs}> : (tensor<128xi32>) -> tensor<1xi32>
    %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %5:2 = "scf.if"(%4) ({
      ^bb0(%arg0: i32):
        %6 = "arith.subi"(%arg0, %4) <{overflowFlags = #arith_overflow_attrs}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> (i32)
    %7 = "tt.call"() <{callee = @sub_function}> : () -> tensor<1xi32>
    "tt.return"() : () -> ()
  }) : () -> ()

  "tt.func"() <{function_type = () -> tensor<1xi32>, sym_name = "sub_function", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = dense<10> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_attrs}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    "tt.return"(%2) : (tensor<1xi32>) -> ()
  }) : () -> (tensor<1xi32>)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()