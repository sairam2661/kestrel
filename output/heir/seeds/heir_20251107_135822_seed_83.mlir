"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_add_with_select"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 8 : index}> : () -> index
    %4 = "scf.for"(%2, %3, %0, %1) ({
    ^bb0(%arg2: index, %arg3: tensor<8xi32>):
      %5 = "tensor.extract"(%arg0, %arg2) : (tensor<8xi32>, index) -> i32
      %6 = "tensor.extract"(%arg1, %arg2) : (tensor<8xi32>, index) -> i32
      %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "arith.cmpi"(%5, %6, "slt") : (i32, i32) -> i1
      %9 = "arith.select"(%8, %5, %7) : (i1, i32, i32) -> i32
      %10 = "tensor.insert"(%9, %arg3, %arg2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%10) : (tensor<8xi32>) -> ()
    }) : (index, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%4) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()