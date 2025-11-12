"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.subi"(%1, %arg0) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 10 : index}> : () -> index
    %5 = "scf.for"() <{lowerBound = #map_or_set_inline, upperBound = #map_or_set_inline, step = #map_or_set_inline, inductionVariableType = index}> ({
    ^bb0(%iv: index):
      %6 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflow_mode_wrap}> : (index, index) -> index
      %7 = "arith.cmpi"("slt", %6, %4) : (index, index) -> i1
      "scf.if"(%7) ({
      ^bb0:
        %8 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflow_mode_wrap}> : (index, index) -> index
        "scf.yield"() : () -> ()
      }) {
      } : () -> ()
      "scf.yield"() : () -> ()
    }) {bodyOperands = [], iterOperands = []} : () -> ()
    "func.return"(%2) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()