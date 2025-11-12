"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i8>, tensor<i64>) -> (tensor<i8>, tensor<i64>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<i8>, %arg1: tensor<i64>):
    %0:2 = "arith.addi"(%arg0, %arg0) : (tensor<i8>, tensor<i8>) -> (tensor<i8>, tensor<i8>)
    %1:2 = "arith.muli"(%0#0, %0#1) : (tensor<i8>, tensor<i8>) -> (tensor<i8>, tensor<i8>)
    %2:2 = "arith.addi"(%1#0, %1#1) : (tensor<i8>, tensor<i8>) -> (tensor<i8>, tensor<i8>)
    %3:2 = "arith.divsi"(%2#0, %2#1) : (tensor<i8>, tensor<i8>) -> (tensor<i8>, tensor<i8>)
    %4:2 = "arith.remsi"(%3#0, %3#1) : (tensor<i8>, tensor<i8>) -> (tensor<i8>, tensor<i8>)
    %5:2 = "arith.subi"(%4#0, %4#1) : (tensor<i8>, tensor<i8>) -> (tensor<i8>, tensor<i8>)
    "func.return"(%5#0, %5#1) : (tensor<i8>, tensor<i8>) -> ()
  }) : () -> ()
}) : () -> ()