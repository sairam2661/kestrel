"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mixed_arithmetic_ops"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %2 = "arith.subi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.muli"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.divsi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.remui"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %6 = "arith.select"(%0, %1, %2) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %7 = "arith.cmpi"(%3, %4) <{predicate = 3 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      "tt.return"(%6) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) : () -> ()