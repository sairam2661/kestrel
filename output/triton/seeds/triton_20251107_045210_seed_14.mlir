"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgPtr) -> (), sym_name = "scratch_alloc_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttgPtr
    %1 = "arith.constant"() <{value = dense<10> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "arith.constant"() <{value = dense<20> : tensor<10xi32>}> : () -> tensor<10xi32>
    %3 = "arith.addi"(%1, %2) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %4 = "tt.call"(%0, %3) <{function_name = "test_call", operands = [!ttgPtr, tensor<10xi32>]}> : (!ttgPtr, tensor<10xi32>) -> tensor<10xi32>
    %5 = "tt.reduce"() <{operation = "add"}> ({
      ^bb0(%arg0: tensor<10xi32>):
        "tt.return"(%arg0) : (tensor<10xi32>) -> ()
    }) : (tensor<10xi32>) -> tensor<10xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()