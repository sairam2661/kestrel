"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>, sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: tensor<128x128xi32>, %arg1: tensor<128x128xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %1 = "arith.muli"(%0, %arg0) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %2 = "arith.divsi"(%1, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %3 = "arith.subi"(%2, %arg0) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %4 = "arith.cmpi"(%3, %arg1) <{predicate = 4 : i64}> : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi1>
      %5 = "arith.remsi"(%1, %arg0) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %6 = "tt.expand_dims"(%4) <{axis = 2 : i32}> : (tensor<128x128xi1>) -> tensor<128x128x1xi1>
      %7 = "scf.if"(%6) <{branch_weights = [1 : index, 1 : index]}> ({
        %8 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
        "scf.yield"(%8) : (tensor<10xi32>) -> tensor<10xi32>
      }) {
        "scf.yield" = (tensor<10xi32>) -> tensor<10xi32>
      }
      : (tensor<128x128x1xi1>) -> (tensor<10xi32>)
      "tt.return"(%7) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()