"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "tensor_op_combinations"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.xori"(%2, %3) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.divsi"(%4, %1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.remsi"(%5, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %7 = "tt.expand_dims"(%6, "axis"  			   		   			) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
    "tt.return"(%7) : (tensor<32x1xi32>) -> ()
  }) : () -> (tensor<32x1xi32>)
}) : () -> ()