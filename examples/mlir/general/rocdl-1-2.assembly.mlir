module {
  llvm.func @rocdl.readlane(%arg0: f32) -> f32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = rocdl.readlane %arg0, %0 : (f32, i32) -> f32
    llvm.return %1 : f32
  }
}

