module {
  llvm.func @rocdl.permlanex16(%arg0: f32) -> f32 {
    %0 = llvm.mlir.constant(-1 : i32) : i32
    %1 = rocdl.permlanex16 %arg0, %arg0, %0, %0, false, true : f32, i32
    llvm.return %1 : f32
  }
}

