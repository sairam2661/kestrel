"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "process_data"}> ({
    ^bb0(%arg0: tensor<16xi32>):
      %1 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %2 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "scf.for"(%1) <{lowerBound = 0 : i32, step = 1 : i32, upperBound = 16 : i32}> ({
        ^bb1(%iv: i32):
          %6 = "arith.cmpi"(%iv, %2, "slt") <{}> : (i32, i32) -> i1
          "scf.if"(%6) ({
            ^bb2:
              %7 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
              %8 = "arith.remsi"(%iv, %2) <{}> : (i32, i32) -> i32
              "scf.yield"() : () -> ()
          }) {
            "scf.yield" 	= "scf.yield" : () -> ()
          }
          : i1
          "scf.yield"() : () -> ()
      }) : (i32) -> ()
      "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()