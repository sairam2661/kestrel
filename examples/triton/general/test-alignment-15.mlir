"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.constancy = 1 : i32, tt.contiguity = 8 : i32, tt.divisibility = 4 : i32}, {tt.constancy = 1 : i32, tt.contiguity = 2 : i32, tt.divisibility = 8 : i32}], function_type = (tensor<8xi32>, tensor<8xi32>) -> (), sym_name = "contiguity_dependent_divisibility"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.maxsi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "arith.minsi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.constant"() <{value = false}> : () -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

