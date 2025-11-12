"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x128x16xf32>, tensor<128x128x16xf32>) -> tensor<128x128x16xi1>, sym_name = "fuzzy_compare"}> ({
  ^bb0(%arg0: tensor<128x128x16xf32>, %arg1: tensor<128x128x16xf32>):
    %0 = "tosa.equal"(%arg0, %arg1) : (tensor<128x128x16xf32>, tensor<128x128x16xf32>) -> tensor<128x128x16xi1>
    %1 = "scf.if"(%0) <{sym_name = "if_0"}> ({
      %2 = "arith.constant"() <{value = 1 : i1}> : () -> i1
      "scf.yield"(%2) : (i1) -> i1
    }) {
      "scf.yield"  = "arith.constant"  :  ()  ->  i1
    } : (tensor<128x128x16xi1>) -> i1
    "func.return"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()