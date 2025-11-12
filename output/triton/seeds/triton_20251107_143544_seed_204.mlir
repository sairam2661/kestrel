"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "reduce_and_select"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %1 = "tt.reduce"() ({
      ^bb1(%arg2: tensor<10xi32>, %arg3: tensor<10xi32>):
        %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
        "tt.yield"(%4) : (tensor<10xi32>) -> ()
    }) : (tensor<10xi32>) -> tensor<10xi32>
    %2 = "arith.cmpi"(%0, %1, "slt") : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<10xi1>, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "tt.return"(%3) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()