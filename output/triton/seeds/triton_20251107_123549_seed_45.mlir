"builtin.module"() ({
  "tt.func"() <{
    function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>),
    sym_name = "complex_arith"
  }> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "arith.constant"() <{value = dense<5> : tensor<32xi32>}> : () -> tensor<32xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_check}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "scf.if"(%1) ({
        %3 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_check}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%3) : (tensor<32xi32>) -> ()
      }, {
        ^bb1(%arg2: tensor<32xi32>):
          %4 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_check}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
          %5 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 10 : i32}> ({
            %6 = "scf.yield"(%4) : (tensor<32xi32>) -> ()
          }, {
            ^bb2(%arg3: i32, %arg4: tensor<32xi32>):
              %7 = "arith.addi"(%arg4, %arg4) <{overflowFlags = #arith_overflow_check}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
              "scf.yield"(%7) : (tensor<32xi32>) -> ()
          }) : (i32, tensor<32xi32>) -> (tensor<32xi32>)
          "scf.yield"(%5#1) : (tensor<32xi32>) -> ()
      }) : (tensor<32xi32>) -> (tensor<32xi32>)
      "tt.return"(%2#0) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()