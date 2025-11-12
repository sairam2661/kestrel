"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, vector<4xi32>) -> vector<4xi32>, sym_name = "vector_compare_add"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (vector<4xi32>, vector<4xi32>) -> vector<4xi1>
    %1 = "arith.addf"(%arg0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %2 = "tosa.const"() <{value = dense<[0, 0, 0, 0]> : vector<4xi32>}> : () -> vector<4xi32>
    %3 = "arith.cmpi"(%arg0, %arg1, "sle") : (vector<4xi32>, vector<4xi32>) -> vector<4xi1>
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.extsi"(%4) : (i32) -> vector<4xi32>
    %6 = "arith.select"(%0, %1, %2) : (vector<4xi1>, vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %7 = "arith.select"(%3, %6, %5) : (vector<4xi1>, vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%7) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()