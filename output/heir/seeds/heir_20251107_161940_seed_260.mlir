"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}], function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_rotate_xor"}> ({
    ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
      %0 = "tensor_ext.rotate"(%arg0, %arg1, 1) : (tensor<4xi8>, tensor<4xi8>, index) -> tensor<4xi8>
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 3 : index}> : () -> index
      %3 = "tensor.extract"(%0, %2) : (tensor<4xi8>, index) -> i8
      %4 = "arith.select"(%3, %1, %3) : (i8, i32, i8) -> i32
      %5 = "arith.addi"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "scf.for"(%arg0) ( {
        ^bb1(%indvar: tensor<4xi8>, %arg0: tensor<4xi8>):
          %7 = "tensor.extract"(%indvar, %2) : (tensor<4xi8>, index) -> i8
          %8 = "arith.addi"(%7, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
          %9 = "tensor.insert"(%8, %indvar, %2) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
          "scf.yield"(%9) : (tensor<4xi8>) -> ()
      }) {lower_bound = #index, upper_bound = #index, step = 1} : (tensor<4xi8>) -> tensor<4xi8>
      "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()