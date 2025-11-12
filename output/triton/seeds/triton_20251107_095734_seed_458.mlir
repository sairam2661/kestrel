"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi1>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<8xi1>, %arg1: tensor<16xi32>):
    %0 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<8xi1>) -> tensor<8x1xi1>
    %1 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.cmpi"(%arg1, %1) <{predicate = 6 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "scf.if"(%2) ({
      %4 = "tt.reduce"() <{reduce_op = "add"}> ({
      ^bb0(%arg2: i32, %arg3: i32):
        %5 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) : (tensor<16xi32>, i32) -> tensor<i32>
      "scf.yield"(%4) : (tensor<i32>) -> tensor<16xi32>
    }, {
      %6 = "tt.reduce"() <{reduce_op = "mul"}> ({
      ^bb0(%arg2: i32, %arg3: i32):
        %7 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (tensor<16xi32>, i32) -> tensor<i32>
      "scf.yield"(%6) : (tensor<i32>) -> tensor<16xi32>
    }) : (tensor<16xi1>) -> tensor<16xi32>
    %8 = "arith.select"(%0, %arg1, %3) : (tensor<8x1xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()