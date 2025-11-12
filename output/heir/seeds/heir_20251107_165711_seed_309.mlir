"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<[-1, -2, -3, -4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor.insert"(%0, %arg0, %c0) <{resultIndex = [0]}> : (tensor<4xi32>, tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor_ext.rotate"(%1, %c2) <{dimensions = [0]}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "secret.conceal"(%2) <{secretType = "secret.secret<tensor<4xi32>>"}> : (tensor<4xi32>) -> !secret secret
   
    
   
    
  .secret_generic"(%3) ({
    ^bb1(%arg2: !secret.secret<tensor<4xi32>>):
      %4 = "					:tensor<4xi32>
      %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "secret.yield"(%6) : (tensor<4xi32>) -> ()
    }) : (!secretsecrettensor4xi32) -> !secretsecrettensor4xi32



    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"()  ({



  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<[-1, -2, -3, -4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor.insert"(%0, %arg0, %c0) <{resultIndex = [0]}> : (tensor<4xi32>, tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor_ext.rotate"(%1, %c2) <{dimensions = [0]}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "secret.conceal"(%2) <{secretType = "secret.secret<tensor<4xi32>>"}> : (tensor<4xi32>) -> !secretsecrettensor4xi32
   
    "secret.generic"(%3) ({
    ^bb1(%arg2: !secretsecrettensor4xi32):
      %4 = "secret.reveal"(%arg2) : (!secretsecrettensor4xi32) -> tensor<4xi32>
      %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "secret.yield"(%6) : (tensor<4xi32>) -> ()
    }) : (!secretsecrettensor4xi32) -> !secretsecrettensor4xi32
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"()  ({



  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<[-1, -2, -3, -4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor.insert"(%0, %arg0, %c0) <{resultIndex = [0]}> : (tensor<4xi32>, tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor_ext.rotate"(%1, %c2) <{dimensions = [0]}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "secret.conceal"(%2) <{secretType = "secret.secret<tensor<4xi32>>"}> : (tensor<4xi32>) -> !secretsecrettensor4xi32
   
    "secret.generic"(%3) ({
    ^bb1(%arg2: !secretsecrettensor4xi32):
      %4 = "secret.reveal"(%arg2) : (!secretsecrettensor4xi32) -> tensor<4xi32>
      %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "secret.yield"(%6) : (tensor<4xi32>) -> ()
    }) : (!secretsecrettensor4xi32) -> !secretsecrettensor4xi32
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"()  ({



  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<[-1, -2, -3, -4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor.insert"(%0, %arg0, %c0) <{resultIndex = [0]}> : (tensor<4xi32>, tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor_ext.rotate"(%1, %c2) <{dimensions = [0]}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "secret.conceal"(%2) <{secretType = "secret.secret<tensor<4xi32>>"}> : (tensor<4xi32>) -> !secretsecrettensor4xi32
   
    "secret.generic"(%3) ({
    ^bb1(%arg2: !secretsecrettensor4xi32):
      %4 = "secret.reveal"(%arg2) : (!secretsecrettensor4xi32) -> tensor<4xi32>
      %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "secret.yield"(%6) : (tensor<4xi32>) -> ()
    }) : (!secretsecrettensor4xi32) -> !secretsecrettensor4xi32
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"()  ({



  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<[-1, -2, -3, -4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor.insert"(%0, %arg0, %c0) <{resultIndex = [0]}> : (tensor<4xi32>, tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor_ext.rotate"(%1, %c2) <{dimensions = [0]}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "secret.conceal"(%2) <{secretType = "secret.secret<tensor<4