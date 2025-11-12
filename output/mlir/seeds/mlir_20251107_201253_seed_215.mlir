"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi64>) -> tensor<?x8xi32>, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi64>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    %1 = "arith.addf"(%arg1, %arg1) : (tensor<?xi64>, tensor<?xi64>) -> tensor<?xi64>
    %2 = "arith.cmpi"("slt", %0, %arg0) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %3 = "arith.cmpf"("olt", %1, %arg1) : (tensor<?xi64>, tensor<?xi64>) -> tensor<?xi1>
    %4 = "arith.constant"() <{value = 42 : i32}> : () -> tensor<?xi32>
    %5 = "arith.constant"() <{value = 42 : i64}> : () -> tensor<?xi64>
    %6 = "arith.addi"(%4, %0) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    %7 = "arith.addf"(%5, %1) : (tensor<?xi64>, tensor<?xi64>) -> tensor<?xi64>
    %8 = "arith.cmpi"("slt", %6, %4) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %9 = "arith.cmpf"("olt", %7, %5) : (tensor<?xi64>, tensor<?xi64>) -> tensor<?xi1>
    "func.return"(%8, %9) : (tensor<?xi1>, tensor<?xi1>) -> ()
  }) : () -> ()
}) : () -> ()