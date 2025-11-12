"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32, index) -> (i8, i32, index), sym_name = "complex_arith_operations"}> ({
  ^bb0(%arg0: i8, %arg1: i32, %arg2: index):
    %c0 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %add = "arith.addi"(%arg1, %c1) : (i32, i32) -> i32
    %mul = "arith.muli"(%add, %c1) : (i32, i32) -> i32
    %xor = "arith.xori"(%arg0, %c0) : (i8, i8) -> i8
    %and = "arith.andi"(%xor, %c0) : (i8, i8) -> i8
    %div = "arith.divsi"(%mul, %c1) : (i32, i32) -> i32
    %mod = "arith.remsi"(%div, %c1) : (i32, i32) -> i32
    %sub = "arith.subi"(%mod, %c1) : (i32, i32) -> i32
    %cmp = "arith.cmpi"("slt", %sub, %arg1) : (i32, i32) -> i1
    %select = "arith.select"(%cmp, %arg2, %c2) : (i1, index, index) -> index
    "func.return"(%and, %sub, %select) : (i8, i32, index) -> ()
  }) : () -> ()
}) : () -> ()