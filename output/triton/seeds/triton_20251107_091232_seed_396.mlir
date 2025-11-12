"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mixed_reduce_and_select"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "tt.reduce"(%arg0, %arg1) ({
      ^bb0(%arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
        %4 = "arith.addi"(%arg2, %arg3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%4) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "arith.cmpi"(%0, %5) <{predicate = 5 : i64}> : (tensor<64xi32>, i32) -> tensor<64xi1>
    %7 = "arith.select"(%6, %arg0, %arg1) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()