"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgPtr, i32) -> !ttgPtr, sym_name = "complex_ptr_op"}> ({
  ^bb0(%arg0: !ttgPtr, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
    %5 = "tt.addptr"(%arg0, %4) : (!ttgPtr, i32) -> !ttgPtr
    %6 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %7 = "arith.remsi"(%4, %6) : (i32, i32) -> i32
    %8 = "arith.xori"(%7, %3) : (i32, i32) -> i32
    %9 = "arith.divsi"(%4, %8) : (i32, i32) -> i32
    %10 = "tt.make_range"(%arg1, %9, %3) : (i32, i32, i32) -> !ttgPtr
    "tt.return"(%10) : (!ttgPtr) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> !ttgPtr, sym_name = "alloc_global"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> !ttgPtr
    "tt.return"(%0) : (!ttgPtr) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!ttgPtr, i32) -> !ttgPtr, sym_name = "main"}> ({
  ^bb0(%arg2: !ttgPtr, %arg3: i32):
    %0 = "tt.call"(%arg2, %arg3) <{callee = @complex_ptr_op}> : (!ttgPtr, i32) -> !ttgPtr
    "tt.return"(%0) : (!ttgPtr) -> ()
  }) : () -> ()
}) : () -> ()