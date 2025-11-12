"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> i8, sym_name = "odd_even_xor"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %9 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    
    %10 = "tensor.extract"(%arg0, %0) : (tensor<4xi8>, index) -> i8
    %11 = "tensor.extract"(%arg0, %1) : (tensor<4xi8>, index) -> i8
    %12 = "tensor.extract"(%arg0, %2) : (tensor<4xi8>, index) -> i8
    %13 = "tensor.extract"(%arg0, %3) : (tensor<4xi8>, index) -> i8
    
    %14 = "arith.subi"(%10, %11) : (i8, i8) -> i8
    %15 = "arith.addi"(%12, %13) : (i8, i8) -> i8
    
    %16 = "arith.select"(%14, %8, %9) : (i8, i8, i8) -> i8
    %17 = "arith.select"(%15, %8, %9) : (i8, i8, i8) -> i8
    
    %18 = "arith.xori"(%16, %17) : (i8, i8) -> i8
    
    "func.return"(%18) : (i8) -> ()
  }) : () -> ()
}) : () -> ()