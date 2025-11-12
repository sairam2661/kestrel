"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, tensor<8xi32>, tensor<8xi32>) -> (tensor<8xi32>, tensor<8xi32>), sym_name = "complex_control_flow_with_tensor_reduction", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: tensor<8xi32>, %arg3: tensor<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "scf.if"(%0) ({
      %2 = "scf.for"(%0, %arg0, %1, %arg2) ({
      ^bb0(%arg4: i32, %arg5: tensor<8xi32>):
        %6 = "tt.reduce"() <{reduction_op = "tt.add", accumulator_type = tensor<8xi32>, init_value = dense<0> : tensor<8xi32>}>({
        ^bb0(%arg6: tensor<8xi32>):
          %7 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
          "scf.yield"(%7) : (tensor<8xi32>) -> ()
        }) : (tensor<8xi32>) -> tensor<8xi32>
        "scf.yield"(%6) : (tensor<8xi32>) -> ()
      }) : (i32, i32, i32, tensor<8xi32>) -> tensor<8xi32>
      "scf.yield"(%2) : (tensor<8xi32>) -> ()
    }, {
      "scf.yield"(%arg2) : (tensor<8xi32>) -> ()
    }) : (i32) -> tensor<8xi32>
    %3 = "tt.expand_dims"(%arg3, %1) <{axis = 1}> : (tensor<8xi32>, i32) -> tensor<1x8xi32>
    "tt.return"(%1, %3) : (tensor<8xi32>, tensor<1x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()