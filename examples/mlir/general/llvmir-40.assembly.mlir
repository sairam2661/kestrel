module {
  llvm.func @range_res_function() -> (i64 {llvm.range = #llvm.constant_range<i64, 0, 4097>})
}

