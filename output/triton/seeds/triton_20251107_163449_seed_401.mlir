"builtin.module"() ({
  "tt.func"() <{function_type = () -> (i32, tensor<32xi32>), sym_name = "complex_ops"}> ({
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.subi"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.muli"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.divsi"(%4, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.cmpi"(%0, %1) <{predicate = "gt"}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<1xi1>
    %7 = "tt.reduce"(%6) <{axis = 0 : i32}> ({
    ^bb0(%arg0: i1, %arg1: i1):
      %8 = "arith.ori"(%arg0, %arg1) : (i1, i1) -> i1
      "tt.reduce.return"(%8) : (i1) -> ()
    }) : (tensor<1xi1>) -> i1
    %9 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    "tt.return"(%9, %2) : (i32, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()