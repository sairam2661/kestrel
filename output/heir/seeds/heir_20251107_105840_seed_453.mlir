"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2xi32>) -> tensor<2xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "tensor.extract"(%arg1, 0) : (tensor<2xi32>, index) -> i32
    %3 = "arith.mulf"(%2, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "tensor.extract"(%arg1, 1) : (tensor<2xi32>, index) -> i32
    %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "arith.cmpi"("slt", %3, %5) <{}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %3, %5) <{}> : (i1, i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg1, 0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%8) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()