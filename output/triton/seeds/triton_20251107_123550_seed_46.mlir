"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>) -> (tensor<128xi32>), sym_name = "stress_test"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<128xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
      %1 = "arith.select"(%arg0, %arg1, %0) : (i32, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %2:2 = "scf.if"(%arg0) ({
        %3 = "arith.addsi"(%arg1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%3, %3) : (tensor<128xi32>, tensor<128xi32>) -> ()
      }, {
        %4 = "arith.subsi"(%arg1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%4, %4) : (tensor<128xi32>, tensor<128xi32>) -> ()
      }) : (i32) -> (tensor<128xi32>, tensor<128xi32>)
      %5:2 = "scf.if"(%arg0) ({
        %6 = "arith.muli"(%2#0, %2#1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%6, %6) : (tensor<128xi32>, tensor<128xi32>) -> ()
      }, {
        %7 = "arith.divsi"(%2#0, %2#1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%7, %7) : (tensor<128xi32>, tensor<128xi32>) -> ()
      }) : (i32) -> (tensor<128xi32>, tensor<128xi32>)
      "tt.return"(%5#0) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()