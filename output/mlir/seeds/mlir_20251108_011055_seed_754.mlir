"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "test_complex_ssa"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.cmpi"("slt", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %1 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %2 = "arith.constant"() <{value = 0 : i1}> : () -> i1
    %3 = "arith.cmpi"("eq", %0, %1) : (tensor<2xi1>, i1) -> tensor<2xi1>
    %4 = "arith.cmpi"("eq", %0, %2) : (tensor<2xi1>, i1) -> tensor<2xi1>
    %5 = "arith.cmpi"("slt", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %6 = "arith.cmpi"("slt", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %7 = "arith.cmpi"("eq", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %8 = "arith.cmpi"("ult", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %9 = "arith.cmpi"("ult", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %10 = "arith.cmpi"("ne", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %11 = "arith.cmpi"("sge", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %12 = "arith.cmpi"("sle", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %13 = "arith.cmpi"("uge", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %14 = "arith.cmpi"("ule", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %15 = "arith.cmpi"("sge", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %16 = "arith.cmpi"("sle", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %17 = "arith.cmpi"("uge", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %18 = "arith.cmpi"("ule", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %19 = "arith.cmpi"("sgt", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %20 = "arith.cmpi"("sgt", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %21 = "arith.cmpi"("ugt", %arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %22 = "arith.cmpi"("ugt", %arg1, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %23 = "arith.addi"(%arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%23) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()