"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "convert_read_counter", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "proton_gpu.read_counter"() <{metric = 0 : i32}> : () -> i32
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()

