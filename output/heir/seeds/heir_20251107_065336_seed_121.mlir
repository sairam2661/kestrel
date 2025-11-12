"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_arithmetic"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "tensor.extract"(%arg0, %c0_i32) : (tensor<10xi32>, index) -> i32
      %1 = "tensor.extract"(%arg1, %c0_i32) : (tensor<10xi32>, index) -> i32
      %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %c2_i32) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %4 = "arith.constant"() <{value = 10 : index}> : () -> index
      %5 = "scf.for"(%c0_i32, %c10_i32, %c1_i32) ({
        ^bb1(%iv: index):
          %6 = "arith.addi"(%iv, %c1_i32) <{overflowFlags = #arith_overflow_flags}> : (index, index) -> index
          "scf.yield"(%6) : (index) -> ()
      }) : (index) -> ()
      %7 = "tensor.insert"(%3, %arg0, %c1_i32) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      "func.return"(%7) : (tensor<10xi32>) -> ()
    }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "integer_arithmetic"}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %8 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %9 = "arith.muli"(%8, %c3_i32) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %10 = "arith.subi"(%9, %c4_i32) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "func.return"(%10) : (i32) -> ()
    }) : () -> ()
}) : () -> ()