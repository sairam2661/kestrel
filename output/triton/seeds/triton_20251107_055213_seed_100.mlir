"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr,i32) -> (i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: !ttptr, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<10> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<20> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, tensor<64xi32>) -> tensor<64xi32>
    "scf.if"(%2) ({
      %3 = "tt.make_range"() <{start = 0 : i32, end = 64 : i32}> : () -> tensor<64xi32>
      "scf.for"(%3, %3, %arg1, %3) ({
      ^bb0(%arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
        %4 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%4) : (tensor<64xi32>) -> ()
      }) : (tensor<64xi32>, tensor<64xi32>, i32, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"() : () -> ()
    }, {
    }) : (tensor<64xi32>) -> ()
    "tt.return"(%arg1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()