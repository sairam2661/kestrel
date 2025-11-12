"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi8>, tensor<32xi8>, tensor<32xi8>) -> (tensor<32xi8>), sym_name = "complex_xor_reduce"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi8>, %arg2: tensor<32xi8>):
    %0 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %1 = "arith.xori"(%0, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %2 = "tt.reduce"(%1) <{operation = "sum", dimensions = [0]}> : (tensor<32xi8>) -> tensor<1xi8>
    "tt.return"(%2) : (tensor<1xi8>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32} : () -> ()