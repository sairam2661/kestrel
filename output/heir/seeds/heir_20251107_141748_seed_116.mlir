"builtin.module"() ({
  "func.func"() <{function_type = (!secret
    , !tfhe_rust
    , tensor<4x8xi16>
    , !secret
    ) -> tensor<4x8xi16>
  , sym_name = "complex_fuzz"
  , sym_visibility = "private"
  }> ({
    ^bb0(%arg0: !secret, %arg1: !tfhe_rust, %arg2: tensor<4x8xi16>, %arg3: !secret):
      %c0_i16 = "arith.constant"() <{value = 0 : i16}> : () -> i16
      %c1_i16 = "arith.constant"() <{value = 1 : i16}> : () -> i16
      
      %0 = "secret.generic"(%arg2) ({
        ^bb0(%arg4: tensor<4x8xi16>):
          %1 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
            ^bb0(%arg5: index):
              %2 = "scf.for"() <{lowerBound = 0 : index, upperBound = 8 : index, step = 1 : index}> ({
                ^bb1(%arg6: index):
                  %3 = "tensor.extract"(%arg4, %arg5, %arg6) : (tensor<4x8xi16>, index, index) -> i16
                  %4 = "arith.addi"(%3, %c1_i16) <{overflowFlags = #arith
                    }> : (i16, i16) -> i16
                  %5 = "tensor.insert"(%4, %arg4, %arg5, %arg6) : (i16, tensor<4x8xi16>, index, index) -> tensor<4x8xi16>
                  
                  "scf.yield"(%5) : (tensor<4x8xi16>) -> ()
              }) : () -> tensor<4x8xi16>
              
              "scf.yield"(%2) : (tensor<4x8xi16>) -> ()
          }) : () -> tensor<4x8xi16>
          
          "secret.yield"(%0) : (tensor<4x8xi16>) -> ()
      }) : (!secret) -> !secret
      
      "func.return"(%0) : (tensor<4x8xi16>) -> ()
  }) : () -> ()
}) : () -> ()