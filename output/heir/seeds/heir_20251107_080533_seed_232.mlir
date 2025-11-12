"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor16xi16, i1) -> !secretsecrettensor16xi16, sym_name = "complex_control_flow_with_secret_tensor"}> ({
    ^bb0(%arg0: !secretsecrettensor16xi16, %arg1: i1):
      %0 = "secret.generic"(%arg0) ({
        ^bb0(%arg2: tensor<16xi16>):
          %1 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 16 : i32, step = 1 : i32}> ({
            ^bb1(%iv: i32):
              %2 = "arith.cmpi"(%iv, 8) <{predicate = 4 : i32}> : (i32, i32) -> i1
              %3 = "scf.if"(%2) ({
                ^bb2:
                  %4 = "arith.addi"(%arg2, %iv) <{overflowFlags = #arithoverflownone}> : (tensor<16xi16>, i32) -> tensor<16xi16>
                  "scf.yield"(%4) : (tensor<16xi16>) -> ()
              }, {
                ^bb3:
                  %5 = "arith.addi"(%arg2, %iv) <{overflowFlags = #arithoverflownone}> : (tensor<16xi16>, i32) -> tensor<16xi16>
                  "scf.yield"(%5) : (tensor<16xi16>) -> ()
              }) : (i1) -> tensor<16xi16>
              "scf.yield"(%3) : (tensor<16xi16>) -> ()
          }, {
            %6 = "arith.addi"(%arg2, %iv) <{overflowFlags = #arithoverflownone}> : (tensor<16xi16>, i32) -> tensor<16xi16>
            "scf.yield"(%6) : (tensor<16xi16>) -> ()
          }) : (i32) -> tensor<16xi16>
          "secret.yield"(%0) : (tensor<16xi16>) -> ()
      }) : (!secretsecrettensor16xi16) -> !secretsecrettensor16xi16
      "func.return"(%1) : (!secretsecrettensor16xi16) -> ()
  }) : () -> ()
}) : () -> ()