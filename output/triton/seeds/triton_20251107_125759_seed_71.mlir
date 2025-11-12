"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, i1) -> tensor<64xi32>, sym_name = "unusual_if_and_reduce"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: i1):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "scf.if"(%arg1) ({
      %3 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%3) : (tensor<64xi32>) -> ()
    }, {
      "scf.yield"(%0) : (tensor<64xi32>) -> ()
    }) : (i1) -> tensor<64xi32>
    %4 = "tt.reduce"(%2) <{operation = "add"}> ({
      ^bb0(%arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
        %5 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%5) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi32>) -> tensor<1xi32>
    "tt.return"(%4) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()