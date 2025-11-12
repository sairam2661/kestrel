"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %1 = "arith.constant"() <{value = dense<10> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "arith.subi"(%0, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "arith.muli"(%2, %2) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %4 = "arith.xori"(%3, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %5 = "arith.divsi"(%4, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 1 : i32}> : (tensor<10xi32>) -> tensor<10x1xi32>
    %7 = "tt.reduce"(%6) <{operation = #ttredopadd, dimensions = [1 : i32]}> : (tensor<10x1xi32>) -> tensor<10xi32>
    "tt.return"(%7) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()