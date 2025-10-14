module {
  llvm.func @fold_icmp_eq(%arg0: i32) -> i1 {
    %0 = llvm.icmp "eq" %arg0, %arg0 : i32
    llvm.return %0 : i1
  }
}

