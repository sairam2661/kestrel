"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>), sym_name = "complex_reduce_and_select"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "tt.expand_dims"(%arg0) <{axis = 0 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
      %1 = "tt.expand_dims"(%arg1) <{axis = 0 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
      %2 = "tt.addptr"(%0, %1) : (tensor<1x64xi32>, tensor<1x64xi32>) -> tensor<1x64xi32>
      %3:2 = "tt.reduce"() <{operation = "sum"}> ({
        ^bb1(%arg2: tensor<1x64xi32>):
          "scf.yield"(%arg2) : (tensor<1x64xi32>) -> ()
      }) : (tensor<1x64xi32>) -> (tensor<64xi32>)
      %4 = "arith.cmpi"(%3#0, %3#1) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      %5 = "arith.select"(%4, %3#0, %3#1) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%5) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()