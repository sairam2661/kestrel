module {
  llvm.func @fold_bitcast2(%arg0: i32) -> i32 {
    %0 = llvm.bitcast %arg0 : i32 to f32
    %1 = llvm.bitcast %0 : f32 to i32
    llvm.return %1 : i32
  }
}

