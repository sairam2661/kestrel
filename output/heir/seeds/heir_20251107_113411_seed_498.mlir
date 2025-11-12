"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>, i32) -> tensor<4xi8>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>, %arg2: i32):
    %0 = "tensor.extract"(%arg0, %arg2) : (tensor<4xi8>, i32) -> i8
    %1 = "tensor.extract"(%arg1, %arg2) : (tensor<4xi8>, i32) -> i8
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %3 = "arith.muli"(%2, %2) : (i8, i8) -> i8
    %4 = "tensor.insert"(%3, %arg0, %arg2) : (i8, tensor<4xi8>, i32) -> tensor<4xi8>
    %5 = "arith.cmpi"(%2, %1, "slt") : (i8, i8) -> i1
    %6 = "scf.if"(%5) ({
      %7 = "arith.addi"(%0, %1) : (i8, i8) -> i8
      "scf.yield"(%7) : (i8) -> ()
    }, {
      "scf.yield"(%2) : (i8) -> ()
    }) : (i1) -> i8
    %8 = "tensor.insert"(%6, %arg0, %arg2) : (i8, tensor<4xi8>, i32) -> tensor<4xi8>
    "func.return"(%8) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()