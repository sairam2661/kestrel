"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>) -> tensor<32xi32>, sym_name = "unusual_pattern"}> ({
    ^bb0(%arg0: tensor<32xi32>):
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %0 = "arith.addi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      %1 = "arith.subi"(%0, %c2_i32) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      %2 = "arith.muli"(%1, %c3_i32) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      %3 = "arith.divsi"(%2, %c4_i32) <{signedness = #arith_signed}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      %4 = "arith.remsi"(%3, %c3_i32) <{signedness = #arith_signed}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      %5 = "scf.if"(%c1_i32) ({
        %6 = "arith.addi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
        "scf.yield"(%6) : (tensor<32xi32>) -> ()
      }, {
        %7 = "arith.subi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
        "scf.yield"(%7) : (tensor<32xi32>) -> ()
      }) : (i32) -> (tensor<32xi32>)
      %8 = "arith.cmpi"(%arg0, %c1_i32) <{predicate = "eq"}> : (tensor<32xi32>, i32) -> i1
      "tt.return"(%5) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()