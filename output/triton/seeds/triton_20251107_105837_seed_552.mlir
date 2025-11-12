"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgPtr, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "custom_reduce"}> ({
  ^bb0(%arg0: !ttgPtr, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1:2 = "tt.reduce"(%arg0, %0) ({
      ^bb1(%arg3: i32, %arg4: tensor<32xi32>, %arg5: tensor<32xi32>):
        %2 = "arith.cmpi"(%arg4, %arg5) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> i1
        %3 = "arith.select"(%2, %arg4, %arg5) : (i1, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "tt.return"(%3) : (tensor<32xi32>) -> ()
    }) : (!ttgPtr, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>)
    "tt.return"(%1#0) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()