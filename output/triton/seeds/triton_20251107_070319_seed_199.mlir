"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi64>, tensor<8xi64>) -> tensor<8xi64>, sym_name = "add_and_select"}> ({
  ^bb0(%arg0: tensor<8xi64>, %arg1: tensor<8xi64>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<8xi64>}> : () -> tensor<8xi64>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<8xi64>, tensor<8xi64>) -> tensor<8xi64>
    %2 = "arith.xori"(%0, %1) : (tensor<8xi64>, tensor<8xi64>) -> tensor<8xi64>
    %3 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (tensor<8xi64>, tensor<8xi64>) -> tensor<8xi1>
    %4 = "arith.select"(%3, %arg1, %2) : (tensor<8xi1>, tensor<8xi64>, tensor<8xi64>) -> tensor<8xi64>
    "tt.return"(%4) : (tensor<8xi64>) -> ()
  }) : () -> ()
}) : () -> ()