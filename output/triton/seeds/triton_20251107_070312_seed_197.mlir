"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "add_and_select"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<10x10xi32>}> : () -> tensor<10x10xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 3 : i64}> : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi1>
    %3 = "arith.select"(%2, %0, %arg1) : (tensor<10x10xi1>, tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    "tt.return"(%3) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32, "ttg.num-ctas" = 1 : i32} : () -> ()