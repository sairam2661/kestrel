"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, i32) -> (tensor<8x8xi32>, i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2:2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4:2 = "scf.for"(%arg1, %0, %3, %0, %0) ({
      ^bb1(%arg2: i32, %arg3: tensor<8x8xi32>):
        %5 = "arith.muli"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, i32) -> tensor<8x8xi32>
        "scf.yield"(%5) : (tensor<8x8xi32>) -> ()
      }) : (i32, i32, tensor<8x8xi32>, i32, i32) -> tensor<8x8xi32>
      "scf.yield"(%4#0, %4#1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> ()
    }, {
      %6 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "arith.constant"() <{value = dense<1> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
      %8:2 = "scf.for"(%arg1, %6, %0, %0, %0) ({
      ^bb2(%arg4: i32, %arg5: tensor<8x8xi32>):
        %9 = "arith.addi"(%arg5, %arg4) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, i32) -> tensor<8x8xi32>
        "scf.yield"(%9) : (tensor<8x8xi32>) -> ()
      }) : (i32, i32, tensor<8x8xi32>, i32, i32) -> tensor<8x8xi32>
      "scf.yield"(%8#0, %8#1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> ()
    }) : (i1) -> (tensor<8x8xi32>, tensor<8x8xi32>)
    "tt.return"(%2#0, %2#1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()