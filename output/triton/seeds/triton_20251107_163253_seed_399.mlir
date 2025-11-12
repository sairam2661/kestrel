"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_computation"}> ({
    ^bb0(%arg0: tensor<128xi32>):
      %1 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %2 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
      %3 = "arith.addi"(%arg0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "arith.muli"(%3, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %5 = "arith.xori"(%4, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %6 = "scf.if"(%arg0) ({
        ^bb1(%arg1: tensor<128xi32>):
          %7 = "arith.cmpi"(%arg1, %2) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
          %8 = "scf.if"(%7) ({
            ^bb2(%arg2: tensor<128xi32>):
              %9 = "arith.addi"(%arg2, %5) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
              "scf.yield"(%9) : (tensor<128xi32>) -> ()
          }, {
            ^bb3:
              %10 = "arith.muli"(%arg1, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
              "scf.yield"(%10) : (tensor<128xi32>) -> ()
          }) : (tensor<128xi1>) -> tensor<128xi32>
          "scf.yield"(%8) : (tensor<128xi32>) -> ()
      }, {
        ^bb4:
          %11 = "arith.xori"(%arg0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
          "scf.yield"(%11) : (tensor<128xi32>) -> ()
      }) : (tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()