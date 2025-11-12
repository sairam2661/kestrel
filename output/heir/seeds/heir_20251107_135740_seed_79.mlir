"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "tensor_add_with_select"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.cmpi"("slt", %2, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %4 = "tensor.select"(%3, %0, %1) : (tensor<32xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "func.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()