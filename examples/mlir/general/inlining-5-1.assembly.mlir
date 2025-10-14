module {
  func.func @func(%arg0: i32) -> i32 {
    llvm.return %arg0 : i32
  }
  func.func @llvm_ret(%arg0: i32) -> i32 {
    %0 = call @func(%arg0) : (i32) -> i32
    return %0 : i32
  }
}

