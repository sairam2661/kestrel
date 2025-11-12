"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: index, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "tensor.extract"(%arg1, %arg0) : (tensor<4x4xi32>, index) -> i32
    %3 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
    %4 = "tensor_ext.rotate"(%arg1, %0, %1) <{layout = #strided_layoutstrided_layoutoffset_0_strides_1_1_1}> : (tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    %5 = "scf.for"(%arg0, %0, %1, %3) ({
    ^bb0(%arg2: index, %arg3: i32):
      %6 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
      %7 = "scf.if"(%6) ({
        %8 = "arith.constant"() <{value = 10 : i32}> : () -> i32
        %9 = "arith.muli"(%arg3, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%9) : (i32) -> ()
      }, {
        %10 = "arith.subi"(%arg3, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%10) : (i32) -> ()
      }) : (i32) -> i32
      %11 = "arith.addi"(%arg3, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }) {lower = 0 : i64, upper = 4 : i64} : (index, index, index, i32) -> i32
    %12 = "func.return"(%5) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()