"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}, {tt.divisibility = 16 : i32}, {}], function_type = (tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>), sym_name = "tensor_math"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.xori"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%3) : (tensor<128xi32>) -> ()
    }, {
      %4 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%4) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi32>) -> (tensor<128xi32>)
    %5 = "arith.remsi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%2, %5) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()