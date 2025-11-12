"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, i1) -> (tensor<16xi32>), sym_name = "reduce_and_select"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: i1):
    %3 = "tt.reduce"(%arg0) ({
      ^bb1(%acc: i32, %val: i32):
        %4 = "arith.muli"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "tt.yield"(%4) : (i32) -> ()
    }) : (tensor<16xi32>) -> i32
    %5 = "tt.reduce"(%arg1) ({
      ^bb2(%acc: i32, %val: i32):
        %6 = "arith.addi"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "tt.yield"(%6) : (i32) -> ()
    }) : (tensor<16xi32>) -> i32
    %7:2 = "scf.if"(%arg2) ({
      %8 = "arith.cmpi"(%3, %5, "eq") : (i32, i32) -> i1
      %9 = "arith.select"(%8, %arg0, %arg1) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%9) : (tensor<16xi32>) -> ()
    }, {
      %10 = "arith.cmpi"(%3, %5, "gt") : (i32, i32) -> i1
      %11 = "arith.select"(%10, %arg0, %arg1) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%11) : (tensor<16xi32>) -> ()
    }) : (i1) -> (tensor<16xi32>)
    "tt.return"(%7#0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()