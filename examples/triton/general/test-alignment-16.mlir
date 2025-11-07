"builtin.module"() ({
  "tt.func"() <{function_type = (i1) -> (), sym_name = "if"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = dense<64> : tensor<128x32xi32>}> : () -> tensor<128x32xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128x32xi32>}> : () -> tensor<128x32xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<128x32xi32>, tensor<128x32xi32>) -> tensor<128x32xi32>
    %3 = "scf.if"(%arg0) ({
      "scf.yield"(%2) : (tensor<128x32xi32>) -> ()
    }, {
      "scf.yield"(%1) : (tensor<128x32xi32>) -> ()
    }) : (i1) -> tensor<128x32xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

