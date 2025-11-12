"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_operations"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_max}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_max}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_max}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.divsi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<128xi32>, tensor<128xi32>) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_mode_max}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%6) : (tensor<128xi32>) -> ()
    }, {
      %7 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_mode_max}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%7) : (tensor<128xi32>) -> ()
    }) : (i1) -> (tensor<128xi32>)
    "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()