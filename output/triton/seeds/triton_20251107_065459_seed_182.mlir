"builtin.module"() ({
  "tt.func"() <{function_type = (i32, !ttgPtr, !ttgPtr) -> i1, sym_name = "combiner"}> ({
  ^bb0(%arg0: i32, %arg1: !ttgPtr, %arg2: !ttgPtr):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 3 : i64}> : (i32, i32) -> i1
    ^bb1(%a: i1):
      %2 = "arith.select"(%a, %arg1, %arg2) : (i1, !ttgPtr, !ttgPtr) -> !ttgPtr
      %3 = "tt.addptr"(%2, %0) <{alignment = 128 : i32}> : (!ttgPtr, i32) -> !ttgPtr
      "tt.return"(%3) : (!ttgPtr) -> ()
    branch_to_blockbb1
 .scf.1:  (i1) -> () "tt.reduce"() <{operation = "add"}> ({
  ^bb2(%arg3: !ttgPtr, %arg4: !ttgPtr):
    %4 = "tt.addptr"(%arg3, %arg4) <{alignment = 64 : i32}> : (!ttgPtr, !ttgPtr) -> !ttgPtr
    scf.yield %4 : !ttgPtr
  }) : () -> (!ttgPtr)
}) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "simple_test"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 3 : i64}> : (i32, i32) -> i1
    ^bb1(%a: i1):
      %2 = "arith.select"(%a, %0, %arg0) : (i1, i32, i32) -> i32
      "tt.return"(%2) : (i32) -> ()
    branch_to_blockbb1
 .scf.1:  (i1) -> () "tt.reduce"() <{operation = "add"}> ({
  ^bb2(%arg3: i32, %arg4: i32):
    %4 = "arith.addi"(%arg3, %arg4) : (i32, i32) -> i32
    scf.yield %4 : i32
  }) : () -> (i32)
}) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()