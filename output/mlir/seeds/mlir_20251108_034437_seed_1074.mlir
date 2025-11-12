"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %cmpi_eq = "arith.cmpi"(%arg0, %c1_i32, "eq") : (i32, i32) -> i1
    %cmpi_ne = "arith.cmpi"(%arg1, %c2_i32, "ne") : (i32, i32) -> i1
    %and = "arith.andi"(%cmpi_eq, %cmpi_ne) : (i1, i1) -> i1
    %select = "arith.select"(%and, %arg0, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%select) : (i32) -> ()
  }) : () -> ()
}) : () -> ()