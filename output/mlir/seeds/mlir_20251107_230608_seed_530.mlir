"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "nested_cmp_and_arith"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %cmp1 = "arith.cmpi"(%0, %1) <{predicate = "slt"}> : (i32, i32) -> i1
    %cmp2 = "arith.cmpi"(%0, %1) <{predicate = "sgt"}> : (i32, i32) -> i1
    %and1 = "arith.andi"(%cmp1, %cmp2) : (i1, i1) -> i1
    %cmp3 = "arith.cmpi"(%and1, "false") <{predicate = "ne"}> : (i1, i1) -> i1
    %add1 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %mul1 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %add2 = "arith.addi"(%add1, %mul1) : (i32, i32) -> i32
    %result = "arith.select"(%cmp3, %add2, %0) : (i1, i32, i32) -> i32
    "func.return"(%result) : (i32) -> ()
  }) : () -> ()
}) : () -> ()