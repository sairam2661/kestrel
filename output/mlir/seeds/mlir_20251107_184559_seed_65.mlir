"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexArithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.remi"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.cmpi"("eq", %arg0, %arg1) : (i32, i32) -> i1
    %6 = "arith.cmpi"("ne", %arg0, %arg1) : (i32, i32) -> i1
    %7 = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
    %8 = "arith.cmpi"("sle", %arg0, %arg1) : (i32, i32) -> i1
    %9 = "arith.cmpi"("sgt", %arg0, %arg1) : (i32, i32) -> i1
    %10 = "arith.cmpi"("sge", %arg0, %arg1) : (i32, i32) -> i1
    %11 = "arith.andi"(%arg0, %arg1) : (i32, i32) -> i32
    %12 = "arith.ori"(%arg0, %arg1) : (i32, i32) -> i32
    %13 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %14 = "arith.shli"(%arg0, %arg1) : (i32, i32) -> i32
    %15 = "arith.shrsi"(%arg0, %arg1) : (i32, i32) -> i32
    %16 = "arith.shrui"(%arg0, %arg1) : (i32, i32) -> i32
    %17 = "arith.extsi"(%arg0) : (i32) -> i64
    %18 = "arith.extui"(%arg0) : (i32) -> i64
    %19 = "arith.trunci"(%17) : (i64) -> i32
    %20 = "arith.trunci"(%18) : (i64) -> i32
    %21 = "arith.index_cast"(%arg0) : (i32) -> index
    %22 = "arith.index_cast"(%arg1) : (i32) -> index
    %23 = "arith.index_cast"(%21) : (index) -> i32
    %24 = "arith.index_cast"(%22) : (index) -> i32
    %25 = "arith.select"(%5, %0, %1) : (i1, i32, i32) -> i32
    "func.return"(%25) : (i32) -> ()
  }) : () -> ()
}) : () -> ()