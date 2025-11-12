"builtin.module"() ({
  "func.func"() <{arg_attrs = [{type = tensor<2xi32>}], function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, index) -> i32
    %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_mode_none}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %6 = "scf.for"(%0, %1, %0, %1) ({
    ^bb0(%arg6: index, %arg7: tensor<2xi32>):
      %8 = "tensor.extract"(%arg7, %arg6) : (tensor<2xi32>, index) -> i32
      %9 = "arith.addi"(%8, %8) <{overflowFlags = #arith_overflow_mode_none}> : (i32, i32) -> i32
      %10 = "tensor.insert"(%9, %arg7, %arg6) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
      "scf.yield"(%10) : (tensor<2xi32>) -> ()
    }) {lower = 0 : i64, upper = 2 : i64} : (index, index, index, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%6) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()