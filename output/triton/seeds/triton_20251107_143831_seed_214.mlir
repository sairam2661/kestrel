"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>), sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.constant"() <{value = dense<8> : tensor<64xi32>}> : () -> tensor<64xi32>
      %1 = "tt.make_range"(%0) : (tensor<64xi32>) -> tensor<64xi32>
      %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.xori"(%arg0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %6 = "arith.remsi"(%arg0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %7 = "arith.cmpi"(%arg0, %1) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<1xi1>
      %8 = "arith.select"(%7, %2, %3) : (tensor<1xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %9 = "scf.for"(%0, %0, %1) ({
        ^bb0(%arg2: tensor<64xi32>):
          %10 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
          "scf.yield"(%10) : (tensor<64xi32>) -> ()
      }) {tt.num_stages = 3 : i32} : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%8) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "nested_loops"}> ({
    ^bb0():
      %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 8 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "scf.for"(%0, %0, %1) ({
        ^bb0(%arg0: i32):
          "scf.for"(%0, %0, %2) ({
            ^bb0(%arg1: i32):
              %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
              "scf.yield"(%3) : (i32) -> ()
          }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
          "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>), sym_name = "reduce_example"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %1 = "tt.reduce"(%arg0) <{operation = "add"}> ({
        ^bb0(%arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
          %2 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
          "scf.yield"(%2) : (tensor<64xi32>) -> ()
      }) : (tensor<64xi32>) -> tensor<1xi32>
      "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()