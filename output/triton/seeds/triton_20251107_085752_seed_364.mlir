"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (i32, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.xori"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.remsi"(%6, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %8 = "arith.constant"() <{value = dense<true> : tensor<16xi1>}> : () -> tensor<16xi1>
    %9 = "scf.if"(%8) ({
      ^bb1(%arg2: tensor<16xi32>):
        %10 = "arith.addi"(%arg2, %4) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%10) : (tensor<16xi32>) -> ()
    }) {
      "scf.yield" = () -> tensor<16xi32>
    } : (tensor<16xi1>) -> tensor<16xi32>
    %11 = "scf.for"(%5, %2, %3, %arg1) ({
    ^bb2(%arg3: i32, %arg4: tensor<16xi32>):
      %12 = "arith.divsi"(%arg4, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%12) : (tensor<16xi32>) -> ()
    }) : (i32, tensor<16xi32>) -> (tensor<16xi32>)
    "tt.return"(%9, %11) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : (i32, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>)
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()