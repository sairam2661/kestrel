"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (tensor<2x3xi1>, memref<4xi8>), sym_name = "complex_func", sym_visibility = "private"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = true}> : () -> i1
      %2 = "arith.constant"() <{value = dense<1> : tensor<2x3xi1>}> : () -> tensor<2x3xi1>
      %3 = "arith.constant"() <{value = 0 : i8}> : () -> i8
      %4 = "arith.constant"() <{value = 4 : i64}> : () -> i64
      %5 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %6 = "arith.subi"(%arg1, %4) : (i64, i64) -> i64
      %7 = "arith.muli"(%arg0, %5) : (i32, i32) -> i32
      %8 = "arith.andi"(%1, %1) : (i1, i1) -> i1
      %9 = "arith.cmpi"("eq", %0, %arg0) : (i32, i32) -> i1
      %10 = "arith.cmpi"("gt", %arg1, %4) : (i64, i64) -> i1
      %11 = "arith.cmpi"("lt", %0, %arg0) : (i32, i32) -> i1
      %12 = "arith.cmpi"("ne", %1, %9) : (i1, i1) -> i1
      %13 = "arith.cmpi"("slt", %arg0, %0) : (i32, i32) -> i1
      %14 = "arith.cmpi"("sgt", %arg0, %0) : (i32, i32) -> i1
      %15 = "arith.cmpi"("sle", %arg0, %0) : (i32, i32) -> i1
      %16 = "arith.cmpi"("sge", %arg0, %0) : (i32, i32) -> i1
      %17 = "tosa.const"() <{values = dense<0> : tensor<4xi8>}> : () -> tensor<4xi8>
      %18 = "memref.alloc"() <{operand_segment_sizes = [0], sizes = [4], strides = [1], type = tensor<4xi8>}> : () -> memref<4xi8>
      %19 = "memref.store"(%3, %17, %0) <{alignment = 1 : i64}> : (i1, memref<4xi8>, i64) -> ()
      "func.return"(%2, %18) : (tensor<2x3xi1>, memref<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()