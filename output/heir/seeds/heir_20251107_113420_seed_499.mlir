"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i1) -> tensor<4xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i1):
    %0 = "scf.if"(%arg2) ({
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_signed}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflow_mode_signed}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%2) : (tensor<4xi32>) -> ()
    }, {
      %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_signed}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %4 = "arith.mulf"(%3, %3) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%4) : (tensor<4xi32>) -> ()
    }) : (i1) -> tensor<4xi32>
    %5 = "scf.for"(%arg0) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb0(%indvar: index, %arg0: tensor<4xi32>):
      %6 = "tensor.extract"(%arg0, %indvar) : (tensor<4xi32>, index) -> i32
      %7 = "arith.cmpi"("slt", %6, 0) : (i32, i32) -> i1
      %8 = "scf.if"(%7) ({
        %9 = "arith.addi"(%6, %6) <{overflowFlags = #arith_overflow_mode_signed}> : (i32, i32) -> i32
        "scf.yield"(%9, %arg0) : (i32, tensor<4xi32>) -> ()
      }, {
        %10 = "arith.subi"(%6, %6) <{overflowFlags = #arith_overflow_mode_signed}> : (i32, i32) -> i32
        "scf.yield"(%10, %arg0) : (i32, tensor<4xi32>) -> ()
      }) : (i1) -> (i32, tensor<4xi32>)
      "scf.yield"() : () -> ()
    }) : (tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()