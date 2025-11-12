"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "reduce_and_select"}> ({
    ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>, %arg2: tensor<16x16xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
      %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      %2 = "arith.addi"(%1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      %3 = "scf.for"(%c0_i32) <{upper_bound = 16 : index, step = 1 : index}> ({
        ^bb1(%iv: index):
          %4 = "arith.cmpi"(%iv, %c15_i32) <{predicate = 4 : i64}> : (index, index) -> i1
          %5 = "scf.if"(%4) ({
            ^bb2:
              "scf.yield"() : () -> ()
          }, {
            ^bb3:
              %6 = "tt.make_range"(%iv, %c16_i32) : (index, index) -> tensor<16xi32>
              %7 = "tt.reduce"(%6) <{operation = "add", operands_in = 1}> : (tensor<16xi32>) -> i32
              %8 = "arith.addi"(%7, %c1_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
              "scf.yield"() : () -> ()
          }) : (i1) -> ()
          "scf.yield"(%iv) : (index) -> ()
      }) : (index) -> ()
      "tt.return"(%2) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()