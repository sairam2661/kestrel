"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.constancy = 1 : i32, tt.contiguity = 8 : i32, tt.divisibility = 4 : i32}], function_type = (i32, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = dense<5> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %1, %arg1) : (i1, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.addi"(%4, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.xori"(%5, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %7 = "arith.muli"(%6, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %8 = "arith.subi"(%7, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %9 = "arith.remsi"(%8, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()