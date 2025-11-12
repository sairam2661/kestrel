"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8x32xi16>) -> (tensor<8x32xi16>, i32), sym_name = "complex_conditionals"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<8x32xi16>):
      %0 = "arith.constant"() <{value = dense<5> : tensor<8x32xi16>}> : () -> tensor<8x32xi16>
      %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflow}  > : (tensor<8x32xi16>, tensor<8x32xi16>) -> tensor<8x32xi16>
      %2:2 = "scf.if"(%arg0) ({
        %3 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow}  > : (tensor<8x32xi16>, tensor<8x32xi16>) -> tensor<8x32xi16>
        %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.yield"(%3, %4) : (tensor<8x32xi16>, i32) -> ()
      }, {
        %5 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflow}  > : (tensor<8x32xi16>, tensor<8x32xi16>) -> tensor<8x32xi16>
        %6 = "arith.subi"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.yield"(%5, %6) : (tensor<8x32xi16>, i32) -> ()
      }) : (i32) -> (tensor<8x32xi16>, i32)
      "tt.return"(%2#0, %2#1) : (tensor<8x32xi16>, i32) -> ()
  }) : () -> ()
}) : () -> ()