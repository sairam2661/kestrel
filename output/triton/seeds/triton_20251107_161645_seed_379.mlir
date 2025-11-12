"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "complex_if_for"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
      %0 = "arith.constant"() <{value = dense<0> : tensor<32xi32>}> : () -> tensor<32xi32>
      %1 = "scf.if"(%arg0) ({
        %2 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%2) : (tensor<32xi32>) -> ()
      }, {
        %3 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%3) : (tensor<32xi32>) -> ()
      }) : (tensor<32xi32>) -> (tensor<32xi32>)
      %4 = "scf.for"(%0, %0, %arg0) ({
        ^bb1(%iv: tensor<32xi32>, %arg3: tensor<32xi32>):
          %5 = "arith.muli"(%arg3, %iv) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
          "scf.yield"(%5) : (tensor<32xi32>) -> ()
      }) : (tensor<32xi32>) -> (tensor<32xi32>)
      "tt.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()