"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>, sym_name = "complex_math"}> ({
    ^bb0(%arg0: tensor<1024xi32>, %arg1: tensor<1024xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<1024xi32>}> : () -> tensor<1024xi32>
      %1 = "arith.muli"(%arg0, %0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %2 = "arith.divsi"(%arg1, %0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %3 = "arith.subi"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %4 = "arith.addi"(%1, %2) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %5 = "arith.remsi"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %6 = "arith.xori"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %7 = "arith.select"(%3, %4, %5) : (tensor<1024xi32>, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      "tt.return"(%7) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<512xi16>, tensor<512xi16>) -> tensor<512xi16>, sym_name = "xor_logic"}> ({
    ^bb0(%arg0: tensor<512xi16>, %arg1: tensor<512xi16>):
      %0 = "arith.xori"(%arg0, %arg1) : (tensor<512xi16>, tensor<512xi16>) -> tensor<512xi16>
      %1 = "arith.constant"() <{value = dense<1> : tensor<512xi16>}> : () -> tensor<512xi16>
      %2 = "arith.cmpi"(%0, %1) <{predicate = 0 : i64}> : (tensor<512xi16>, tensor<512xi16>) -> tensor<512xi1>
      "tt.return"(%2) : (tensor<512xi1>) -> ()
  }) : () -> ()
}) : () -> ()