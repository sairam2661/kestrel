"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, index) -> i64, sym_name = "tensor_rotation_and_extract"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor_ext.rotate"(%arg0, %1) <{axis = 1}> : (tensor<16xi8>, index) -> tensor<16xi8>
    %9 = "tensor.extract"(%8, %2) : (tensor<16xi8>, index) -> i8
    %10 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %11 = "arith.cmpi"(%9, %10, "lt") : (i8, i8) -> i1
    %12 = "arith.select"(%11, %10, %9) : (i1, i8, i8) -> i8
    %13 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %14 = "arith.extui"(%12, 64) : (i8) -> i64
    %15 = "arith.addi"(%13, %14) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    "func.return"(%15) : (i64) -> ()
  }) : () -> ()
}) : () -> ()