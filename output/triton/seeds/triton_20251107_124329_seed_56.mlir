"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>), sym_name = "add_and_reduce"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "tt.reduce"(%1) <{identity = dense<0> : tensor<1xi32>}> ({
      ^bb1(%arg2: tensor<1xi32>, %arg3: tensor<128xi32>):
        %3 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<1xi32>, tensor<128xi32>) -> tensor<1xi32>
        "scf.yield"(%3) : (tensor<1xi32>) -> ()
    }) : (tensor<128xi32>) -> tensor<1xi32>
    "tt.return"(%2) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()