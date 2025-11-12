"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, tensor<5xi8>) -> (i32, i64), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: tensor<5xi8>):
    %0 = "arith.muli"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg1, %arg1) : (i64, i64) -> i64
    %2 = "tensor.extract"(%arg2, %c0_i64) : (tensor<5xi8>, index) -> i8
    %3 = "arith.select"(%arg0, %arg1, %2) : (i32, i64, i8) -> i64
    %4 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i64) -> i1
    %5 = "arith.subi"(%arg0, %arg0) : (i32, i32) -> i32
    "func.return"(%0, %1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()