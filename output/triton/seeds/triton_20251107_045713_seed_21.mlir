"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_op", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "scf.if"(%0) ({
      %4 = "arith.cmpi"(%2, %1) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> i1
      "scf.yield"(%4) : (i1) -> ()
    }, {
      %5 = "arith.cmpi"(%2, %0) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> i1
      "scf.yield"(%5) : (i1) -> ()
    }) : (i1) -> i1
    %6 = "scf.for"(%0, %0, %1, %3) ({
    ^bb1(%arg2: i32, %arg3: i32):
      %7 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i32, i32, i32, i32) -> i32
    "tt.return"(%2) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()