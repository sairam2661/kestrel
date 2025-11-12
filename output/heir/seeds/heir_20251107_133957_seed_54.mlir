"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor_tensors"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "tensor.extract"(%arg0, %c0_i8) : (tensor<4xi8>, index) -> i8
    %1 = "tensor.extract"(%arg1, %c0_i8) : (tensor<4xi8>, index) -> i8
    %2 = "arith.xori"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %3 = "tensor.insert"(%2, %arg0, %c0_i8) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %4 = "tensor.extract"(%arg0, %c1_i8) : (tensor<4xi8>, index) -> i8
    %5 = "tensor.extract"(%arg1, %c1_i8) : (tensor<4xi8>, index) -> i8
    %6 = "arith.xori"(%4, %5) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %7 = "tensor.insert"(%6, %3, %c1_i8) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %8 = "tensor.extract"(%arg0, %c2_i8) : (tensor<4xi8>, index) -> i8
    %9 = "tensor.extract"(%arg1, %c2_i8) : (tensor<4xi8>, index) -> i8
    %10 = "arith.xori"(%8, %9) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %11 = "tensor.insert"(%10, %7, %c2_i8) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %12 = "tensor.extract"(%arg0, %c3_i8) : (tensor<4xi8>, index) -> i8
    %13 = "tensor.extract"(%arg1, %c3_i8) : (tensor<4xi8>, index) -> i8
    %14 = "arith.xori"(%12, %13) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %15 = "tensor.insert"(%14, %11, %c3_i8) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%15) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()

#Arbitrary_constants
  = "arith.constant" : () -> index
  , complex<ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8, ui8