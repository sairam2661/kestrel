"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>) -> (tensor<16x16xi32>, tensor<16x16xi32>), sym_name = "reduce_and_addptr"}> ({
  ^bb0(%arg0: tensor<16x16xi32>):
    %1 = "tt.reduce"(%arg0) <{init = #arith_constant_attr, op = #arith_add, axis = 1 : i32}> : (tensor<16x16xi32>) -> tensor<16xi32>
    %2 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %3 = "tt.addptr"(%arg0, %2) <{offset = 0 : index}> : (tensor<16x16xi32>, tensor<16x1xi32>) -> tensor<16x16xi32>
    %4 = "tt.reduce"(%3) <{init = #arith_constant_attr, op = #arith_add, axis = 0 : i32}> : (tensor<16x16xi32>) -> tensor<16xi32>
    %5 = "tt.expand_dims"(%4) <{axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1x16xi32>
    "tt.return"(%3, %5) : (tensor<16x16xi32>, tensor<1x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()