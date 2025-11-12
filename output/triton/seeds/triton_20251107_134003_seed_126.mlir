"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "xor_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags} > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "tt.reduce"(%0) <{axis = 0 : i32}> ({
    ^bb1(%arg2: i32, %arg3: i32):
      %4 = "arith.xori"(%arg2, %arg3) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
      "tt.reduce.return"(%4) : (i32) -> ()
    }) : (tensor<16xi32>) -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.cmpi"(%1, %2) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%3) ({
      %6 = "arith.xori"(%1, %2) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    %7 = "arith.xori"(%1, %5) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %9 = "arith.divsi"(%7, %8) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %10 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
    %11 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> tensor<16xi32>
    %12 = "arith.xori"(%10, %11) <{overflowFlags = #arith_overflowFlags} > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%12) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()